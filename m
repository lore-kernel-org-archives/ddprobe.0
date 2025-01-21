Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344631487E1
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737477954; cv=none; b=JKrSZcwqMSpw/4cjPztQ3w5cPSk1csYVmzn3pAMrUtvrG73RHnIL/jyDUepx9PfphtL9ZdzLtETD3NgjBLwqB5nIvDaaI1/QVEpuEtpoKtiJN4YOYPEgYWO9uFgLZiUT2NvPoBm6zBta7ggcm3ClKL9MZgzaLvPSjhxN4G66d1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737477954; c=relaxed/simple;
	bh=RoEUoew0NXhwlwpLkPsdBzORTU+cR7iyCY7zM1fkaAE=;
	h=To:Subject:From:Message-Id:Date; b=okh6Zrtv4tzYBaXcJj7GGxqk3vlxTfS9J4RZ3AsgX7zmFeww/baDpYlRdD3XIx7gnLLhbrnKM1klkGSkXus80pcq6O/TeSKxl/GwcE7GH4GKqxbcUCeRZtJNNbQngYi3oSNRWvzvWsmgVTav2FRz/T2H16phL1d4GCgMJaRsiAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FPLtCEin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FPLtCEin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48C4C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737477953;
	bh=RoEUoew0NXhwlwpLkPsdBzORTU+cR7iyCY7zM1fkaAE=;
	h=To:Subject:From:Date:From;
	b=FPLtCEinjN7LPVMFK+YJyrPUkrRVdMy1kwPOHXz72tjyFE9AOjAbaEL8LFGbdY9Up
	 wwzYIdilZ9zGQa1+QbXNXex7J+7/N1YKPX2dUf8a5//Vx4OLD/Ul34u/9Kdzapgrub
	 fkPLqiwwIzMVdMCcKRwKOIaQAkA0W7JcHp3rMMXxfxTANIgyR0xcK68nyKyuvbHSzv
	 w3ZKKK92iKIcmZiaHosnYX25dNBDLIBKtFN+BYhLbAT1JjKClUhficyAc9cLQw1zu8
	 zGyKO/WJLkdF0fpwisrLmHhgzjt2sckax2nWfI6W58+U3Xsklgi/uim6xEiTwWjoIJ
	 n5XrnhOSUPcBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94241C0218B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173747795359.6143.5984622338389944672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 974fbc1ef94122df4db89a66d06112ffa790c066f51c5e7c252fd16f946f2017
Date: Tue, 21 Jan 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737477953
