Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BBF63DC
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:03:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB985C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:03:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681502585;
	bh=8GmlB3HSa8HBiZasOPB78lyOs9kNbxmLbECxHsTbTAw=;
	h=To:Subject:From:Date:From;
	b=evpjue2ZkFM2ZW1xSYcGbFhirx4FJzTMdmmOlYhoS3MyVdOuAv7KSBDfW9IqATVUS
	 qNbhDxt0qzubW9JVHw8F3HuPKiNcF/1u3Oh+Ok6T9nP1+TYymosN/Muv/GdL1ONaAg
	 aAshQboX12qckgorNiEqIyc2/G+qcm67xhBIB2fl2l3+vkC9WxGrTUM4mmqDMMhkej
	 WdEJ1/9+if+eWFGoRZp0NpfUzOnUZtKQQCB55JWvsjs8snQ9Dmei/0tyDKnMTkukes
	 mwjbm95OKbRy+eU1QqD9nCewj5cTYh5d17PaL5/Ga8KvZ+i7r1MlL/BKJbo3Y6CNuI
	 5h/MkWPTk3RYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B786FC77B72
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 20:03:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168150258574.11310.486817635330208828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2a7be7701ece5d940b8fb1c8092ac4c8346d9fc5dc0cb5afcfd728d4e8106c9
Date: Fri, 14 Apr 2023 20:03:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681502585
