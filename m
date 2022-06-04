Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24F0137F
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 16:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654359359;
	h=To:Subject:From:Message-Id:Date;
	bh=gjBM6mR6FPZtLy+9wBBXrgwnlIxBVtwf//2WfcUROBc=;
	b=Q7tT7DCPnNmg8lburFM2NzgquAHRZTjvmC1w1Z1DWLixCNa5ggjMmWSP1qZyd7L9
	VwtOrgoUJS0eaI01ujW0vQmqFm3Kr35zT03Cfd4vef6GVQneubvjXNj8QRsG/Sv9bPo
	ikGfqAUIfzXUh7YVcuoAs+IUu55bbdbkoBp7Sac8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654359359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gjBM6mR6FPZtLy+9wBBXrgwnlIxBVtwf//2WfcUROBc=;
	b=KRZNxZyfjNAzqV1LpHArEGAIlXnsANnUqlUrLKomCnbftGhcr4X/QxGfjIphYR4h
	EbMx1sdpm/VBITBgPj//lgM7Ma8kvYglYAUj5Spllx+BIuJHvsOAgfrj8uxDkVq/vGp
	j13ddrw40mJQlZgA5SLg8vx0U16/PwdT65hdhsUc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812f807f05-ac54fa62-fc9f-4946-b815-3fd65c207eb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4b6b1344b06831a1278d0fbcdb23d42c3bc06949b403bc28b34d9541c3ec3c3
Date: Sat, 4 Jun 2022 16:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654359359
