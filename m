Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D9254B1F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750799394; cv=none; b=hTTDAgoWixr3anrfvvGExrw8JOTRG8rtBmrQH4kcc/2OyRC28ZDnoNwFOFBlL7cUPb7b1HTZj2z4ekLDNL+MYMewlYWEcis6og6MizmZjmxSp9opvJZlTBGq9GefHK2lUTk0yJ4v1smevVjzCbE+E+B34PxX1GzstkqsbxCcxdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750799394; c=relaxed/simple;
	bh=rzlb/YXGvl4/cz2L59yectyO+yaVTfS0Ao+QOB5j1IA=;
	h=To:Subject:From:Message-Id:Date; b=clEYFL3gCjT5BMU4OsHkJw5fipTa2pQ5Y4cXHe7xd9Xdb1V4xKDQpHtT+KMASIdmd9xoSblJ95wihP89tM2Vv7F9+8xzNWyGFEOFo4y2c/vgU1SKkaU/RYnEYLO/M9Ttp7/wVxkye7FyPZiNrdcHE6Kk3Sk+4SSQyl7aIgbFnCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4aYRaQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4aYRaQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA342C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750799393;
	bh=rzlb/YXGvl4/cz2L59yectyO+yaVTfS0Ao+QOB5j1IA=;
	h=To:Subject:From:Date:From;
	b=E4aYRaQkMrEqwP7MdtEUAoIxqFVVMq4jM8wlkBL2XwKLBTUrSlyyNNv4DQ1cOKhsz
	 UMDlhJZwm+RmiljEBYH3MqbJrq1iudC7af13CmFRXsxehe2upY93ho4jEOF7FQWbgq
	 8QH81jEhjwbMvwBAAN4fiXd3S9ibuTS8QldPkp5yqbRf2w4ji5n9ej+PVlO1vP14xa
	 /8rtkyoZ64faJiSq4BsulpqSP6PXe/Anim3cbwy2ekEGEjyUxz0njvm5lXfioRbkur
	 fBCSJOGqr62UnTNgjV1lh1vueGGJwWbXTEWwmHUhBHmX164ORYAM4Xn4KrME7nfIKa
	 0DVTLmssdU0TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9529BC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175079939360.4539.7743938321174136800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d265d958bd36074cdedd04aa264ccb6d23261c1f252633059acffeb1880aa04
Date: Tue, 24 Jun 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750799393
