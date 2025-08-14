Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104DD83CD1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755158394; cv=none; b=KMUvIrfJ6N0fCAtZVCGylLD98r/aQzqbMKwMLU3L+CpCXWmV5/lE0FKl+k2rKhf+/egnIqxQHJv1/u/XOqIJE27f4de1kPEq9GLv/inkdNwuXRdR6vPCMMGFzMhFMFI2k6FDasG7Dd2Vmhycdi4obdNnmpTOe9u1s533sw6/2Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755158394; c=relaxed/simple;
	bh=UJD74I/ddstz+pMqfuWEUv419xhL4K/4B2IqqHQ12xk=;
	h=To:Subject:From:Message-Id:Date; b=t+jp0JXtZ1tpXbUO1kjAyHDn0IJUlvutOo836EbPSdcwMWlKK1URQHkWhIHCRb6J9ZGFvfgQMo0hmGnGS+TWxvLkiqK8DTQoUzI+A2ttDImwueKVEf5w+XUdsYZQP1YVPgOjmoRhB2i94JIPYt/N/cXaxRjpUAeK3LKWtAHlHPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl+RarBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl+RarBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D376C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755158393;
	bh=UJD74I/ddstz+pMqfuWEUv419xhL4K/4B2IqqHQ12xk=;
	h=To:Subject:From:Date:From;
	b=Rl+RarBdXPT4Whr4MzjuT3JRpsmn5O0GHKHAvyu7N07eInoHbIiR2ZFqr4+iEijnS
	 vEiPkkE/se32pd4FG0BBQl6jPr6JrRqkB+zfqAJDmeIbDK0aOvQ8vgPfaRLH7NRqit
	 Yl7eLaZiR5sAtn56Vna7E1VNNyORkpAWsIY/XiE6HkXNrBkzPLO0C3uNvZkQ7hIULB
	 ahUFWafguOWqREBiF77Q/Cl0vKOxNhaiBdtIHcc5sInixNgLq0R9x1m2E7sOXQ30Cv
	 JHVw+mvU79DoUHjDaHzYnTK4NQtEWUnFoGjkAHhGkGBBoZP4yznUHsuFm6Dg0Fln80
	 yVM5RMHYLQOZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED89CA0EE3
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175515839357.12759.8365157904346895719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c03d1112d818c66ff58c1564fb123ef84d37820408a7360806a00dc06deb3cf9
Date: Thu, 14 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755158393
