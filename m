Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ABB369
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660379452;
	h=To:Subject:From:Message-Id:Date;
	bh=A+qFhxRM1ncxxsDli4bkwsG9db6XTHasseX33esQmFo=;
	b=iyY6S5P1k409aA7OfopU9sgYQoxG//zp0jk1RRUFyZtlMerkNhUcwWE1DUrEBcKL
	pxV8ARkT5EX2WaEpFEEgaFOQuw/LdjHLiILu7xWtC5lxs0xGk4Roip+ZdQ8hCEnhOue
	ooGR/sNhhzXzSdQfXnRKfv8vVNxm41TT937inCPA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660379452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A+qFhxRM1ncxxsDli4bkwsG9db6XTHasseX33esQmFo=;
	b=aONJqCyGdrAnbo71r7jC9qls0kfMBaDVTQytyj1qJ6r+OwqvdVnOAm4tK14XapaK
	D06IO5QT21F+91UBduOBHGMMv7H56DY39r8Ly0V6/9gaQxYnWYVhaM8HaHVTRa9hqGS
	p7yM2a4CYIbNfqS+yBy+Ztv7PQ4z5VrHuY3fzZwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829653d4bf-7048244f-b601-4c70-8ac4-238f0f5956cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 582b6f74e0efd08966eab708878cd0442c6ea28d3b17cdef558837226bfb649c
Date: Sat, 13 Aug 2022 08:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660379452
