Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0444F3264CF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774247694; cv=none; b=U2y2E/p8oiDyekh37Pq0RNanNEfGJZ4RiPDfKlqBdg/otR+pbDNyS1C5EmdH6cKWHGlMaDM8+2Ahf2w7UQsysIE6VwA+P8eSyHUEeO4drc4iM0T3+HkhWQ9XNeNy1j3MTs9OPAZ0p3ErN6AtNu+IbaOoaYW9bF+ITd553e4cFmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774247694; c=relaxed/simple;
	bh=+duwNNhGBCXXRZ6xK7MpXC5dNJ9Pyx3fk82WoHz/8hE=;
	h=To:Subject:From:Message-Id:Date; b=C2xIwHLtdD2SZz24EeOB7tvlNqH6cMi20thMgqwA3nkKN4b2X3/MladrdkPZgByNbqWax2mgMnj4bvtyP7tyKremogU5ct9BJFqa5TV0Ow2mtTRDjeU9ljtJ3DXFqhA1+fQ9Qbpvn8PY39+c/1Tn3km9aNBexdEgsLBY4NY7jFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JnoxTNhf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JnoxTNhf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3984C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774247693;
	bh=+duwNNhGBCXXRZ6xK7MpXC5dNJ9Pyx3fk82WoHz/8hE=;
	h=To:Subject:From:Date:From;
	b=JnoxTNhfkblqzw2Zv1nAbNOjoh357ks/7e8S+yzF3j6+KG3FVUGnfiUmxRSTjMCHD
	 xJXrzkG9rJk/Um8w8iM+pAlI79oMzya+U4p3D1R5l6x0K7Hm5q9gDRVxBU6l6dkuPw
	 /rTjCOVzfxRANKPjE4E4HhcGUYhDcTrgQfQPFXIWGZ6TSpnIu/Xwp4IY5UQYmj2TxM
	 v4524DSMI/4yDyGwaO+12Dh8KZsSJgsVT4WgrF5kI2RGfcZ8VvOzDpRsoWLUXlBpX8
	 L+KUkE0Sb+9oG/i4YwDJMclGzRvYINzJdzKBBytm45VwhUkEb+j6RwLln61mg7q1Vj
	 pice+tAmiKjjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90411D58CDC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 06:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177424769358.29106.7116978660004881034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a76fba03b10358f036cd16c4715183120b1fa2e5119c2fc1ce62c8fd7bba154
Date: Mon, 23 Mar 2026 06:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774247693
