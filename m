Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7231876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 11:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655985239;
	h=To:Subject:From:Message-Id:Date;
	bh=bTIQ6BvF3lVH3oZlcZz20qmv6NIFJ6klCvX5nFx3WsA=;
	b=e6EZ8V0OX2EFtXNBKIDTpDSwH3m+fhnFMSOVhTeD2iXebFH0ubkruEXneGEB/RST
	8pdntdkI+7G0S6bKXrc1g8PY3+InYkSSuTRoeE0yLGOh2tt7HPpjINUzFTpuK3qqfBD
	eXkG0ZV0GNVu9TbPu1mgNjqXl5vsa8hSXLnhvyG8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655985239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bTIQ6BvF3lVH3oZlcZz20qmv6NIFJ6klCvX5nFx3WsA=;
	b=FajfjK23Js/OQy5gHPb0h5Lcfc4YPNZWtC4IrKjNP8IXOcAmJhYi/3QCgDhShckR
	CRsD4o0nJt2PuGhf7mpBChFZE9c6cmDoo5oUhSpEjkHWOAsFWQp6OkE5MnjELnEtlbr
	rsbOTKVnUgfCKJrms+tvdlmo4YtkEBUgChh5H98E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181906974aa-ca0a3bec-f22b-498d-bd1b-01e9297e9c0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f792348dfd8920819699387ec0cef9ae72e436b701461267a2aca710effb011
Date: Thu, 23 Jun 2022 11:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655985239
