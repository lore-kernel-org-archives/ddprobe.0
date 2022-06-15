Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2977A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 19:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655320019;
	h=To:Subject:From:Message-Id:Date;
	bh=/FmYPrM6ul0J4XT4XnzjvtqB2mlnqs5sQ2R+OawQra8=;
	b=gkPi2TFHjxBNTFlafVGrELGPhw7VY6vTFXpfhIP50rzPVzzp1msxdji33kb5Lo2N
	9B0bgJagEAqGEfaL2L53Ed/VJMeuntpQyxR//ECfftPPpZAP6L7XbO2rFkvZzmRAALo
	d+hw2/zR58IDw29p0zgF2NMLRLKrY8hHxhcar2lU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655320019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/FmYPrM6ul0J4XT4XnzjvtqB2mlnqs5sQ2R+OawQra8=;
	b=OD3aCECfjXEuZ1kTBrXm1KdIXWFzGwVeGDSJlImHJYxGD+faACgdPHGsinVFcb5n
	OT1jqbmdMWGrEFh6ZvS/RiwzXKZ2Ty+QWUy9XdOi3hoirpV6Ir6VReFCQYKmKHaZ6Hs
	k8lSKt+fyQRNuEcCWdEmgI+Ha0gR8xYRkpT2ckjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168c30119-6cd8ef9d-7f1a-41e9-a58f-782da31d6c5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72c28cd72b8b81a687018f5226360832745d45fd652d8f1eb8234e3146eaf128
Date: Wed, 15 Jun 2022 19:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655320019
