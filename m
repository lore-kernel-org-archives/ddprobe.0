Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF88E321D
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64B49C433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662456053;
	bh=fF7OFAfXZ3kj7w+nbuNgfjrWvZxTH++Y1FIn7XQYzGs=;
	h=To:Subject:From:Date:From;
	b=kLxg1BpcY8+y+pJXaPaFRx5nU0dIXExeV7gXeuUg1x1V+X/vEKnMDfdrYpcyl/f22
	 M/nG4f0kN9Xdt7ACYnvasjDZ+2cMJcmKNqb3SxY2ALUUvJdR9P6jVgVmT8LFm07+GB
	 T2Fg0RV8a1r31kYcxU0s1urCU0LLalHY/CIgubZMbqhZbHEmkPN/soSVLHPMcSKCIm
	 5PWrlTGMQGrAiFqHJIS58WG59++lavbxd2vfCv0FYlD0ULJtzp9Zsj5Km9uZmCcnqq
	 fyMRtL0093pxVB5uadFAqtvO0Z0N93LBYfgkCJk29uxkO613dIm/wBKXCM1+EX7/ad
	 adC0qZ0bPwavg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DD57ECAAA1
	for <ddprobe@lists.linux.dev>; Tue,  6 Sep 2022 09:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166245605331.31669.16588124781200255566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a62928ebf6118e000f720ab5df9f1f486aad5b1dfa9ffb6f43f5db9bd9cc5357
Date: Tue, 06 Sep 2022 09:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662456053
