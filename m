Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DDD17B418
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762079994; cv=none; b=eXeBHBOdAw7oZTxUNp1wr+0A95bWkRjGUyqImwZSVIhMp/jU7V8K6ydKHIxrhNMKV31hXaKwLd80YV/bD+tfcGhKGEYU4rLXp/1sFOkM+P34pdsHDUVZj2+KZaC9beygCrGNqAbGWgooOqh767rwJgJpuMn3unEOit0BH1PwbpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762079994; c=relaxed/simple;
	bh=Zdnew0EBN2jRSOVxKY9OWS3+h8o4t5IM8iL2UE9dJeQ=;
	h=To:Subject:From:Message-Id:Date; b=PZKsQ30AxztqQOc9d7tY+yyW1hyo44Imn7mr8IK7vJLfV8xOcQE+rvev9GGHSnRCqmljRCi3plNr/a+vnlTQWaY+Gulo7UPP8eNgL5wHW3fF1+5Z13Eaeo7pW06ZOrw+VB1R9+kSWbQsZGNb99EcKhdHB/smAIIRkgIZ3nGZ55Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2znb8gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2znb8gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE4CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762079993;
	bh=Zdnew0EBN2jRSOVxKY9OWS3+h8o4t5IM8iL2UE9dJeQ=;
	h=To:Subject:From:Date:From;
	b=P2znb8gxLVahiCKwnarRLSlYO7h+dOzIwjfdhhADwMQHvaNveBoMR5tV3ZIg8i9uv
	 4zACIV/6yXYdglh6pt/r3MB6VkfpQ6zJpJBfDUV5hV4cU/RYpv8LfP2AZ763lY096s
	 2WqX4BaFPq0ebwvVujDOzwU3KuLYYepon3Ty1sxRUMLOZcw/AE6+KmnlE5xbfZDB47
	 SOdbKMgg6kZuJ6SJA/QyMjokrxxB7uMxJwG1h0laiF0tixYPNGFhzbTePWRcGilAjA
	 bPYknq6yLpOpxmC5goG/HMr/ujjhfoH6v/7qnf0aFWUzYyZq3h6KElIYyPyhlpma3r
	 Appt94NvgkNAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A0DCCFA02
	for <ddprobe@lists.linux.dev>; Sun,  2 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176207999359.26954.6955635563743654134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8f3934c06e118cced3e3fd2083f64f707702b023b468286d97719c5f001dcc
Date: Sun, 02 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762079993
