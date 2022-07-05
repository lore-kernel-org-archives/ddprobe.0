Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59A912917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 07:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657006612;
	h=To:Subject:From:Message-Id:Date;
	bh=GVMd1DIMXWrbmF3kt062Cs+Us3APIo5RLwgvzbVrOpE=;
	b=TUfTZ7FmMVVdT8uX0mpBzT9e2LMZRcIRbAqKBad3bolsaUEwuSFrEuCvRaLwJ8JC
	eGZWIWtmTXpb5xW00CPest8Fvf6k41JPPMRGqPqfgdu+NPAf3KQB9P3tw6yhb/D1neB
	RyHS0kGgiZAbdgQ8Fd5mBohn2mGvMSZ6gosLGq1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657006612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GVMd1DIMXWrbmF3kt062Cs+Us3APIo5RLwgvzbVrOpE=;
	b=TeA71YUE2FZUlTv+ImsxIxVlEWRTHzmDwh+fSiR147gp6/5KmNYGxPCnIIvNFisi
	Sj33j0jdI9vueeHpoFsY7Yz+Uy08IJoPkj+I01AkgoU6ZGunzl1bfBfO1hrjA1X505N
	WEKUS6SeIlvZNOB73Ou4ZC8OHdtXaatQtazP123M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cd4a5f28-2078028d-feb7-4c2b-9184-4081121b7682-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9530fb7d7a48cfdab6f18ee024e4a94988ae3369e89447c0f8d7e7c8e2bb582f
Date: Tue, 5 Jul 2022 07:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657006612
