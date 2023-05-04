Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A24B156FB
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C629C433EF
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683240306;
	bh=ukAoR5nLDtMits/ZhSTVnpBwgifdN6Mkapg3Bs6R5X8=;
	h=To:Subject:From:Date:From;
	b=ObGAsJQXZN+gluYb0jWYng1FwyL4ky79HqIQKTPC6Ds7NEVgVr7vYjWmeW9xidlnT
	 Doxn39vHIgSoK+XJvH2i8FpPtB2UxXG/2jmgPwmDYJMzfK6tCuxX33/I7oldpiGk2C
	 noI2veefVlWF4D5ayqtzqIUT4tyRQJUt6zQt0AgTM0mUEOclp9SAaFkFSQakhzwAKj
	 waOVusgBYA/mEsw7Prt9QVnulrrWcoOPUv8llvloZhTh5+7rIW8FeHQAjDsNpqGDIm
	 wYEWImknq49ByKT3XXGlNF6VufTJUnAsljqdCAVJuI9vFZF4QSb66sytN2Y9L3Qe7B
	 X0Qm6goCS7Zbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF77C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  4 May 2023 22:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168324030588.3443.6484252139071448630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617acd75541368973f0cd99f00b94a960060b68ce2e8cffc6e8f1c74bb1bf193
Date: Thu, 04 May 2023 22:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683240305
