Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5793C2F39
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 10:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654685759;
	h=To:Subject:From:Message-Id:Date;
	bh=OTHEQPTrM+OkDsAU+y9DOS1QVLy7Y7R7lylOrtu6wX8=;
	b=OwSPu6HcZuzz95X/Sy7d9qHTL52KfOVyr705daRfsnUHyeGSfvrRxHbIJu8DmM9L
	OwMMJd8aD9CKhtBIaNby9kPi3vABMO0Gm1xkg4m229GK+ZGZ10GjZGD6Sd02M/4+nCi
	FOt6OQ3vk9pRfh2LMj1woP3pk3BZLb8vD82yxy5U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654685759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OTHEQPTrM+OkDsAU+y9DOS1QVLy7Y7R7lylOrtu6wX8=;
	b=OMO8GXM3gjhPn1YL0PUGind0FvNIrIsYZRp9IcUAXQmkdz9UkLRCjghfEPJg51KL
	Z5CkWnxLbvA/mwBYA7qbLrqk98Wl8VGmXxSUtU3ntTu6XerQbvkBrbcM7B8g4VQYOIn
	g/iw4MIq6H5Q83hb85ZW8Pcv1S4387ni0qfdz4pc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018142f4f6dd-8231a188-1a81-4ddd-bb65-c2c66689455a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a049765039723aa66cab2cffc87436cda731da3d88f9534ffb9ccfef10996504
Date: Wed, 8 Jun 2022 10:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654685759
