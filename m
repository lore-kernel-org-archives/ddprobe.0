Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E3797B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E51C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667008254;
	bh=5NCc4RUSIHQDT28325JBmmV8KqtrIfdGs6k+lQOm5uQ=;
	h=To:Subject:From:Date:From;
	b=QVrqmSh+1TwCqFi0uRp+dj8VHI1LGLRcEnn5G5nQDaReObem96j25SiC5DG0v+cO8
	 ROQg3+j6vR54NtyF0A+XhS/8R5UqcNQTKQSeiyVhrSEmdjblskfpoUwn8/sKp0BBJF
	 LDoKlODvu2PErzL98nuzUfK0ncNBLSIY/w9gVniNqK+7fQ4qQ0xryz/xqmFXNOEoPn
	 eMUgMjBbXIwglA7EDRQgWLmm75NIDy7tyPMRc8ngM/K0yfh7SergdeSPzuvoeYyIuW
	 kcKY2crKh7NtbUBgu/udsyLJKWIeTQttSLvjdPpDnaVnUNbw+AilKt8+d3vGGfp3dA
	 Hj4CTWDzjJTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89589FA3741
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 01:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166700825452.26569.2858628966622287920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67559773b406823345b8a8b5a2f952a489ed562fda07ea8cfe96a57898a36f4a
Date: Sat, 29 Oct 2022 01:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667008254
