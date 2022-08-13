Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530A3639
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660363852;
	h=To:Subject:From:Message-Id:Date;
	bh=Q2lc/1wEMWMzrQcxdN7QpCWu0jdunLYzO1IuJjFDRt4=;
	b=d4pY4byjO+m3K8sWW2gqKN5s8aM3R9RKA/20ucSoq9aLytaLHe9bvJky5bjp76CB
	xOBmsCgIOdikS0D9v8X8mw6OFi0FbBYCFRpXp5ShYLAyqEXYiE3f9gVgVjN6QcTj+fZ
	XZ7a4B/Lej1PGG3xhwtmZkSXcVKUP6dY9ibNPqkI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660363852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q2lc/1wEMWMzrQcxdN7QpCWu0jdunLYzO1IuJjFDRt4=;
	b=kGYV9FfTms6Cq+zrX9ykv3R4laDs12UFEa+4bZJ5D/9FtDc7Jv+nTWkNHXEXS2xk
	azgEHPXRz1NVxSiO3EOoi+MbnxxuKpnu6b3zpOTjGZZJxF4q+qtCRrhk9XjLoJ1T15k
	QEC3DE5Ya8QqHDuwycDFQ8dQv0iYpN4qkavpGfTY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829565cb06-75cb927d-5d60-4054-819b-43f14dae951c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b88a41d05a536a83a55cdc1564177a2750ced7f940670c1a648b3642a9d7fa6a
Date: Sat, 13 Aug 2022 04:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660363852
