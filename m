Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC767612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647893485;
	h=To:Subject:From:Message-Id:Date;
	bh=3AbGPclazyuR9zUfrSr0B86IZ7dCVqd5WV+bwONRYFQ=;
	b=BU4X5ztp23wtdIuXN/yTlO0NsdVNdoL8UG+zfmAdghyq+evDZ9jYCjjFS9kd8h7/
	74lVRRENmG5ntDVLu90yRBpaBcV4MFLkI1St50PI8z3gtIfi+4IkS3r9Ry6Hf0DhMN0
	010oac6lFEP8dyKx1A8l6fsjMvjgRqG4/iFCZX8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647893485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3AbGPclazyuR9zUfrSr0B86IZ7dCVqd5WV+bwONRYFQ=;
	b=XBPqCPaCYE70u01PN1HEdIRWICdiw1Ht+p80kBzxXOykK+XzUmGr+E2ucsDp5pyg
	ktGKtYhSysKtwbU0/x7hveBWe64MhNvsLik164T8yIS8+mSb/PTkJgnGeC8kkHeuvdD
	unHHqYGTviXAZJnvfHX7Dxf3BVPT/XSPwPm/R9uY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae1b14fe-f6813a3a-8369-4a0f-a177-824073785bf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7c68592cfc6f31760bc0fb8069bd6ba1cfdda2564e83d3c23de64c3856d5f52
Date: Mon, 21 Mar 2022 20:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647893484
