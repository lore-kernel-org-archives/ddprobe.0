Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177D41FDF85
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729549554; cv=none; b=Ekr0Bul5J4vMfWcuIjrIH3JYk4MtxpmqOGCJZpx0kwT6+wXNd6Sj6dOlnFk6hX6HEn46ploXxj4KROkvDFoicXB7HtFmcaVrq5WAN5wPzUfzwyj7K74cPcuG84lfJM5y3hgWOiqMuJnfI/hEAAi9RH4ISAKfhNxyBE/Cx71XEyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729549554; c=relaxed/simple;
	bh=p+OFzQdc9+4QlXAnEGf8MmZ4a8lD7tBNMBUoonLubIE=;
	h=To:Subject:From:Message-Id:Date; b=Llhfu0ySNH1+OXDUEHMTeUMk2StGLl57Mdr8tHw6axrSTULDtJuDAdS6kJOTb8w5PEtX6PSx6uAOenNqpGCBaMRImlP74Y4ve8NKkIme4Wt9oewRnMoj9h6RI3XgMIizh6BMbxZqg4Zp+MVVkew4EmX9av28gkiob/jBbn3m6aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK9C9Vqf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK9C9Vqf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFFBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729549553;
	bh=p+OFzQdc9+4QlXAnEGf8MmZ4a8lD7tBNMBUoonLubIE=;
	h=To:Subject:From:Date:From;
	b=XK9C9VqfyTF04HKHrSw/blHS1e4zE+GbxmZUpXoKXZw2O1f1mvOcMzqd8mf3FLoTb
	 usVXgkUYO1zl7/gBl8BFYQdV0WpRd8dlQJH+3BHhnPdlqQVP61RNBUd7UvRe1xllPQ
	 r1Z91I1eMLEoqfvBQga7F98ywxQ5Np1MHXtoOx9D3wPyF+bn7txVK3HCjVSbYyP5DW
	 I0IjVPGR/EioxbFl0AHd98jjgfyBp6Vq1XXoqnZeoTa7Wp+63Hiemk8UJomRdt36LW
	 t7e09+rywt24iRmLwjRHsdbI4+JFYGSywpBta8+2Iv7WOg2FHhJ9DPBRHbUh3s+DGW
	 OJAN11D35IYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C48D17142
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172954955359.16412.7664327345478393165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 593ae72ff3aa638b211993926168e2f53235376550950a3ddd6bb780e1945aa6
Date: Mon, 21 Oct 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729549553
