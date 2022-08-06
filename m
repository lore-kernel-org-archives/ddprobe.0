Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7E7C
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659781852;
	h=To:Subject:From:Message-Id:Date;
	bh=zXW0TLvVOuP3vGGmgy+RYu5JepzccmndsVMGi4y0Taw=;
	b=Ggj9Vv7+hQDdxlyZXCEVyR8G4ACoABgLiPMvZ06VZb2+vHZLhpGbD0mVYamtbmnv
	prrKAgRdwuExhbfYPefJuHypQS7Y0g8oLcnNhi3ncmYrmGqJ0oy6/DFvj0tdArYUBZL
	0dwTms8CA5vkE8KIZOiGb4IU4W+Ls70p6v/3Wigk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659781852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXW0TLvVOuP3vGGmgy+RYu5JepzccmndsVMGi4y0Taw=;
	b=c6p+acdkVgK+4LeIO4hiOgytzrwj0qjXePIrhDwJWFqiabp/GdRNTc3aEWiuGAx9
	KNOWxbQaiVjEchdgNBIEhfqPoqt19c2X5ZOJ+vmnsszpvR/4VGv2ANQ4JhQINVu/nGB
	Ft3E/EwJ5GyG0FZqSNKLHy954hx1l0Su/BxzaTJU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018272b52de7-08e6ee77-59d5-4307-97ed-da7202780e7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 079a5508d03b44daa67d00507c3533a354fee69f4ea079cfe63b0135ce26f8ca
Date: Sat, 6 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659781852
