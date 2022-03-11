Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC5C35CC6
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647030385;
	h=To:Subject:From:Message-Id:Date;
	bh=tkjykbljDZmh+J+z0wSoRqNh0+LGoX5JuMD5BAxNwWY=;
	b=QQnuEULKW8sW9xF+eyol4VkmxAneSH0ZFAfzjGJeFYNwiVDYcL32dhrDZDmoprqy
	u1CxEcls5D3Cvb/nsaFDymb3LoycZZINAM1r6vJS0LxVLVxHs6q65AuS21giXPuWnc1
	0d6tdTOSfDTsRwY+7GOmaALfFBRSDoTr8czFFlKk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647030385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tkjykbljDZmh+J+z0wSoRqNh0+LGoX5JuMD5BAxNwWY=;
	b=WKqtb0/fVW3yicW0XgqPStFYeTvhdy8HbqPFNdBzEIekQv3532fPSG9Z+Qcq02m7
	VGyKw5Ra6N0rQVzmXNx8ww2ugIESTrf3w2GbHlNU3twC6po7Gs1eHgrIXtvOG9hbsge
	qlPMZHMTrlgvpR3+pp6gapIsbpdoIjP+aN7MGBqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7aa938bb-c07eb9ab-71d6-4eb5-9c30-3911b1a714fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af00fec8e70c3d90a7f4971def25612a0c6ed8c96e7e35c44705e2ad0917d1bc
Date: Fri, 11 Mar 2022 20:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647030384
