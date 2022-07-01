Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3518A1850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 12:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656677812;
	h=To:Subject:From:Message-Id:Date;
	bh=W7AGCnku90QwIe723+a+aZhXGvSjY19JgaAjITzeb2M=;
	b=PrDNdcEcIYRgmFYBFaZTAWLF40t7EvGBLQWk4uPal6m7t1ufCIj6fZeCWgFGTyyN
	GRMArU9HfuR+GHOFaW2RyQT+HpRiVZ13mZfa2He5VfxOH+cFnZOaeZwiWfoiCRDtkAv
	K0Ip8h57oa1sRVb6B2Ztt9lru36Qm4lIS3YQrQ8Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656677812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W7AGCnku90QwIe723+a+aZhXGvSjY19JgaAjITzeb2M=;
	b=f5NXATuXc8iP3UKvrlhqFRZpgGlxIMPNep1JE38kEbh+0JwVDnZR8HYAGLK7tjR4
	nP29sVvzk3CIk1t4ld/zKHV4nkWWG1De/33Ki+DMi7aDfdlhlPwLCMzXRyp2GSzA5Vj
	Dlk17e7z8z/ZA67y2go7/KIq/7k1eEu6vDN6a1LU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b9b14887-38bfa742-08ce-460b-ab58-696e268c6588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe774c2fe66a6331e7dd4dacb3d33abdfff73c71c4ca613e20fe6d6ea4b16534
Date: Fri, 1 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656677812
