Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6335CB91
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774695894; cv=none; b=W+v6P35jWo3JOflNJtPjP6U/IvjHDjmeHvpf7PZLmxuCbHJzpXx9qyzDwlE8tXwfGjNDtKzinUlApMq0gbsY4QQ6e5mfsOYoL7FWSe7l23BtG0m4xYRhBqttgW2x2QJV5SoaovPE6xaEKSkHPCOs/IaLGN1HSuW+hPc29qPI8H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774695894; c=relaxed/simple;
	bh=wb3edUFi5ghLgmDNGNDTxXhQ8dD8srbIi/znuzCZn8A=;
	h=To:Subject:From:Message-Id:Date; b=UtvGcZFd4OfaAnVqvJiYoGBt8XXV/6L1nxvnWkjo7NGleyu5gsyHuuhnEp9t3NC5+JynY1mJ1iq02zhABdDoAP+cPfsOpEx1u+Jmoca8FGVadaY/NoL2QOdCzp6K3H9OP16eEYotkvnNTf+gakwRBKaX4E2f42ABSem3JiS6Mto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hXwXriN6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hXwXriN6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5CC2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774695893;
	bh=wb3edUFi5ghLgmDNGNDTxXhQ8dD8srbIi/znuzCZn8A=;
	h=To:Subject:From:Date:From;
	b=hXwXriN6ztgrcCyTmnGAJM9reYjwoPmlDyxX3ZArKfV/6pZyaBBI7MeVMX7zsF8Mw
	 OMOsB0vZrwDzOsq36YfelXxB+j6V23J6K5i3mC205F5vAfOxdpRhkrhslGwjvjTcL2
	 hJJ4a8Vb9+EdvEXRuP5gd5A1GiNQR1vPF56U93pI9VCYrmbKxBU90L2oKwN4WSudCs
	 xg40poidm8dWbqt0b6tbbf8Ae1V/kk0tvOXl5nQLr9iZXXoToTHOpqQ3kxEF7mfoQ8
	 bsVlL9znqcmc6G0I9feBcJ44Aos21oBf3mM5ZN3Q9f4NvhnlHXrTe4xOhuucI6Zw7G
	 iKkIke5VIRvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB1810F3DD9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177469589360.21323.4673636437995248510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c347d3b9c48767c91e05962f0c9e5a6ea23fcb23d010ea1fb0ce856b78734b0
Date: Sat, 28 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774695893
