Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A0F3C05
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 15:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656518212;
	h=To:Subject:From:Message-Id:Date;
	bh=+GiHGnQfNATKBK3GgvCDkOtNn7ZZQvfp9l4wvz4+g6A=;
	b=lnaqDwr+Cd/UzEL3lV1yGdydrhIwJtXJ8OchIzF7y7FL8g87o9N4FWpHDk2SlqSA
	EbBFsArfWp7Aw5Im0KOAG7J1V+NiPg/ScKUtiFkMynELSjtrSY+MT2a2LiZo1GdVWcq
	YNsI4iIcr4hj0m3ED16YsulXVZLjX9U4l4bIK18s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656518212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GiHGnQfNATKBK3GgvCDkOtNn7ZZQvfp9l4wvz4+g6A=;
	b=eFwmK749ZrYmJG3CTQ04C+jZdG5O5IZKkcUFKZNtsr9Oiudr+YdLpQygQ3dcQdrV
	5XBqihBqW3/pu/GLrF8dBf6X9J8qJTPU7C7s/PsSs5i4goJyJ3Ohj6pwa0UUZGMi2PV
	tW9agTcydBQ9DnP+dhhn+k4nAE1bmZ0cQJ6drdHU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b02dfad9-208b3c28-571a-4677-8844-8d63ee19a48e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e1cd01898c3fbdd6099e66e9f99ad6ca6afe8617a9e2f1c8776fe349fcc536b
Date: Wed, 29 Jun 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656518212
