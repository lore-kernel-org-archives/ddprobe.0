Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC127488
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660866652;
	h=To:Subject:From:Message-Id:Date;
	bh=2+g5oKdUIgcOMSLHACYiWjcOREcR5kJ/wG+3SaX5/Iw=;
	b=Scri77tWt/sg31UPU7TXLbrlzpHbRJk4gj6qEaiKd2Q3Vq44CzfbfTji64WRVHrP
	Q5IF2zkA+FGyTxQw2mpfEczHMVv2BXKbPPVlBMRpnQwMJ6Y/nh4TqQmt7LRSkWkTZCg
	NVPnOnMOJGdTfGl0ehy2p+EG+zWF4z6+TCiAZ3nQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660866652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2+g5oKdUIgcOMSLHACYiWjcOREcR5kJ/wG+3SaX5/Iw=;
	b=PDzZmYnm0tQAkOOe6S1GYxE/8ySiJ1Hi+ihmUdc7SKt4EmmMa4iKlmjssd6EoZ+6
	qFBlDHLM1ruQE0X3RdhjtySW9jSeIhcHyQje0vrBDwgYuPQ5dARngz/COhrcR9EVyOx
	Fv4LH+m7lmPM+XhcXrUWSJgYf6aRZW1G6hzxdgJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b35de995-10fe3046-bda9-40c2-b16d-77bbda1c7d4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca7fec3d8841b690c3af0ab116762b0e56834f4275bacf4997585422735e814f
Date: Thu, 18 Aug 2022 23:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660866652
