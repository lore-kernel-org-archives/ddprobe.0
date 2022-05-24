Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50AC429A9
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 22:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653432359;
	h=To:Subject:From:Message-Id:Date;
	bh=zSg0AJ4q915wj8v1Ll3lpwiNCBhW8LuFk5AdFDgzS1M=;
	b=FO23KllVJ0yA4SyMVUmjjZXxmxSkHR+YeOxYWhBEt0ka32q9w0Zhmf8WPZ9/KqDj
	tqmMQAKydofO5UYLU020XIuT3gVGzL+u88s41NVX7N1bfZAewK4wDcNrEmVDO1rLcY8
	mrI7XUYiiRMlRd7uFsiRfxTzZq4ok4QYG/hD46pE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653432359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSg0AJ4q915wj8v1Ll3lpwiNCBhW8LuFk5AdFDgzS1M=;
	b=UM7TlLOcROR8aEfx1buYBQ19POzgsVw9wg5hln8jHWI4JL6rEEHp6kjEmDqWYqXc
	/rZAJpFZbXGEVC9R/+l6RuUpZn1D4id1CBzbzuvAqhwNrrU/NpOhoojullcSdDNjfqE
	mEvs+Gf1YK3sywx4P1L4LT1ZTC94KsI5m7wzdwhg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f83f99d6-dd53915e-90cb-4683-9d04-d10b125b8cc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 680ef67bb573bdd4d6ab1e23a9526a93f66aaf7bba16e21d8d9cfd6c5a1d3779
Date: Tue, 24 May 2022 22:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653432359
