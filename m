Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B5D3FE5
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 23:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653779999;
	h=To:Subject:From:Message-Id:Date;
	bh=Ips77o5dmf0MwujhOOhmXoWgEkBAE5hZl7gDn8ePVHY=;
	b=TNcxwXm4A5/eqA9Th6g1c2Jx5tIvwEPT87tt2g1jBLbSJI+KnnqXXdKi0ukeSmxU
	C9S7t7Pu0Au2akYqqy6V83JZ8Bjpfb+vbObbcCQaSBXuIiYuatI4qcxA0X0g+52jYxr
	FRN8XUeTo0tNsGbv5IY3rw1ZjSjHm6BRwK/Iexz8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653779999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ips77o5dmf0MwujhOOhmXoWgEkBAE5hZl7gDn8ePVHY=;
	b=Ptcxr9fqLOEfk5AelJNSFmMnOSlj2FJdMexuGFaWvMJmc5eCX5C7rBFUP6hBc3ij
	xMcIQh3ZA95KV2JnDdBGfa8ur2tgGOjwoKCFmusjmPlBqx42RyvsguRXXjmv0tteagl
	z7ztflGYqk6EYGWVz0LY4vbGGdKodWy7+KSJ5qfo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810cf82a39-396f034f-60d4-41ea-ba2c-3fac54774312-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58bab56447f69c17b5d8cdad492c694cee4771c56f284ab8660d28bf536e7717
Date: Sat, 28 May 2022 23:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653779999
