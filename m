Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C34B4388376
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772663093; cv=none; b=WLXeOn7EJuXBZV0Rv9VLUC8iCdnL/4aziZFW9cHZjRFdNu4aq/B8g3Q+LrJqP+14rB+oUrTbUaj47AUYX4tsZ0rzRX0i9EvafNyKW3m5MB24kSVI2cNcMytxxvhzAE0AKOQZwkM8TF9aouUeXNdnPxHXmdLeTR+fzv4WDgpNLj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772663093; c=relaxed/simple;
	bh=XRYQj/saUnB7BeMDaXX4+R/i0jvy2Ktnp2J3CoGb1D8=;
	h=To:Subject:From:Message-Id:Date; b=jzOzeB6EV6KABDhm2+VAuNur9eML9qWmFDIrGLEOZTQuyDwR1CGQwZ48e7Rv31CWoQTFhZ7vXlcsFrCRr/bJA3LJFRrdqUdcnk60AwG6qes+l5IWgmFEqiHnhrt8jJOkmJW6OAVlpJvqXfSrRSsZQlVvRu/m6EmJKVQ8FDnUuYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7mCmM8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7mCmM8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F62EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772663093;
	bh=XRYQj/saUnB7BeMDaXX4+R/i0jvy2Ktnp2J3CoGb1D8=;
	h=To:Subject:From:Date:From;
	b=X7mCmM8WqWUFe/s19WUl+h+RJc7Q4tBhBoh7eD+Gn30jOFjGInBNTLCE/i1/BIUBp
	 qKpuUdxErIP8nWNRfoEiBVRNdypju4ZmafwG+HTU6PvJ26raqoljMbM5ue6FJITnkO
	 dktqgJtmEzOktoYwnVUWOTHUB6EytcO9rhhIcVZs+mnmpJzcrJYaFhgwBBfJvQ1Kx8
	 7An4TGLIJ0cEUhUgu2ypXECtLod3Spl+MVYZNT8ToZSgEbGaECOFjA2JgCX1woZFCm
	 5rM8c2wt1Zn0xDVoskhBUvihA5oWCi1hyX+LGW3iZ620/ZHLBZO/pEK+tb5+EJf1Bf
	 JMQUwSvVatTDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9086EEFCE4C
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266309358.22934.11797888585585052164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de347b418b5143d7244c557619a919e7ffabffff50d61fcb828cb8c96737938f
Date: Wed, 04 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772663093
