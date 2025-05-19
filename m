Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337E5266B4D
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747638594; cv=none; b=HPZ4Z22/H+Hcw//PWJHEAKT53Lw5pC1mEDbfe54PLHrN+IjPxV8UGtoSwc4D5HutBoNIm4jWTd1oxLjfD74YIzJPJVXUBjfIDt1oxYFQ1f2ZRDa/6U6Grm5uq0wVBOACzcGslfU+v3xzY43+X0C9SWQbmlujl7i1aZlZ/3WQJq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747638594; c=relaxed/simple;
	bh=XiIGsqE4k8jkVmC0RldJWo+EycSJrRs76M/dR3h2tNE=;
	h=To:Subject:From:Message-Id:Date; b=C5Lz16ettY9IzHhhoJG+juy5tjAFEfThQ7JU8nuU4eG1OpnxHpVi9XC+utn2irNpqXHqqFj8hE6x0w4emmwHnmzZ+l6mse/uKimJ0jB651GeFMVBUz9gINGmMXgFrAXF2fo51CiOCCGRdkgAcbEUAeU0PD3smvBz4okJRGvx5PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QGuLDMBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QGuLDMBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD9DC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747638593;
	bh=XiIGsqE4k8jkVmC0RldJWo+EycSJrRs76M/dR3h2tNE=;
	h=To:Subject:From:Date:From;
	b=QGuLDMBV1CidjNodHWm6qqo2VLf/0mA3zCuw8bGVf/TB/P0KWgQIlLKwTT3RzW7iS
	 XSz+EeByW1oBP98SKZPFgv57Kb7ReOgT9hKJDYqXWs567c869bT/JNcSUgvPdZeGmd
	 nPDHPTeUtSVKGsxbzJj1ACSrLjoycWGc4X+tzfaQZrW7hdMEeNmEGg3wMj9KAs9B4M
	 IZ/VtpE0A6oxrgXg0WuDQQeGdLw8/lRWM2FdbjMcj0TAZwEP/mg/f/6+zrWumb5k8Z
	 snV91a1+KU3WTxf9LWUySoi3cJwJOyZUohc/hduZecdeamvbdKK/2vqXZ9LwUvKWbr
	 uFWMFrmcUsJ7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC87C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174763859357.22845.640234197449275828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b5058b0be6a3d3589ccfe7adddd0aa8a3b5d763e245d911a20a943407d9a72d
Date: Mon, 19 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747638593
