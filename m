Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC4F7F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 10:30:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655720999;
	h=To:Subject:From:Message-Id:Date;
	bh=I88SReI+Ig/0sSjMOKDvUHqAO6hOyLnQ4LhskWxuAUc=;
	b=YZ9Kb+HX9CPkrIY+cn9raaFqolM6nQGH5BL7lC4mol0OooeQMaWgHMjRWzhDZEI2
	afFBrSV6y02ZooZ5Ldo91HeOHwMc5zVfUn90qwCu/DAPLfmzYV6ctfD+ZCmPWyso/+b
	47LiJ7rn1n65ylXc1WszKd8fNOAP1HgNDxL1HiMQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655720999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I88SReI+Ig/0sSjMOKDvUHqAO6hOyLnQ4LhskWxuAUc=;
	b=UrZ+9NAcI3tBe6PBy8XeZttoL3y7uIMhBDVvFCt746xKkSZz7Ks4yVQ3LrK0vy+i
	CIQfFvrvWNRyIXrDRY1BvLd1dAdrRlocvnYtTzOZbazD5Sv6UiRI1hrcbODcUs0fjFE
	GhRSKqVWuYDxZJBwxxH/IiPoaCW64WliEmYFgLWU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018180a9794f-aed16762-d439-479e-81bb-6e5975462402-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8940270c5742be0bf531414ba36a3d3fb6427cdeff97c32b5ae99b37da3d39c9
Date: Mon, 20 Jun 2022 10:29:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655720998
