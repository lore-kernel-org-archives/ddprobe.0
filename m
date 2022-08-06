Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 629B81C2D
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659808252;
	h=To:Subject:From:Message-Id:Date;
	bh=y/LoAO/RWbinqY//uPlwXhIORvX2mHBiGrhzmeuLHP4=;
	b=ZRDbpuZPxwubVr4zgTIJPd9mmvEmjOp+WPjJ3k/6N/TCKaA20c2wSlSeylU9DmQo
	O+T37lZFZuRfSbJUHtP37BQXaioO++/2k5J+PXA14MR5auHmyC00AwlOvJKfIGiOHnC
	aUEiLvuuT2ktXBZ16ZTbPLl9vDK5q+b+YYHrNBvY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659808252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y/LoAO/RWbinqY//uPlwXhIORvX2mHBiGrhzmeuLHP4=;
	b=C0aW4xgBZJYsxhAGU2QWi2+06j6TDjZ6oG9nqyZaInG3NADzkNapw5jEbnEyR9E0
	frTNL9b7Nep1DLBwQzE8VnepoEQdwFfUZLjqFkw28i+mt0yVvX8Pegkqh6odnQiSsKh
	SR3TBRYq3sKKd3X4cEhxohfsNOmNygSJmax+MDsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018274480272-24486c72-410e-4419-a705-e8ad86e0c538-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 454e458eb2c513c1a6682eb19f8710cb05d4d4d9f874bb66a6ac31cb7859ed5c
Date: Sat, 6 Aug 2022 17:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659808252
