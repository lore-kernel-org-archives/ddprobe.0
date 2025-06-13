Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258B32E11B0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749856195; cv=none; b=fRNh+Y9ay4SMHKr0+QklmSPJZYzbepKVf+EqEtJ4T8ZR8CLWEPaC2YQWNW2APU4pjB14DKR4XMni39EFHufTm1DzBzq/Dfv7u8fxJdssda57ONNz+kM4xSza95xaiE2ODtG3qmOaoNmg4Y9+For9CVF06tNVum4dLWdHljVTEMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749856195; c=relaxed/simple;
	bh=XK8i7YnMesDlztFEEJYrXMwYWCNi4Uc/56K5KYil128=;
	h=To:Subject:From:Message-Id:Date; b=qK8J4PAvVG2R17ks0Oj+51IM0eEU4ome4oAumxxiyMlFvw0za8lmgfhGvbtasjBgnIlE4wAiaAndZ1SVNvjzJeI/o+z1QLF2qr8S08wF8NmTYAC42SgPVp6kKbym9UouR3IJ16gJC4oeQvRNN0D5wCUxYF9ojuCsLZanb/C8UFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKl+91Z3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKl+91Z3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B78C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749856193;
	bh=XK8i7YnMesDlztFEEJYrXMwYWCNi4Uc/56K5KYil128=;
	h=To:Subject:From:Date:From;
	b=BKl+91Z3wCcq4y+692i+TDyri2fx71k20OLGtsiS+XoNjX966kGwXbKSxCYS6NoHt
	 KLM0sHUHGRreYJOTtT9E23sMURuHFzPFEG2Rkw9Na/ShSTi4JviQXDm7AozFS+B2bx
	 FviYQ80bN8ISUf01Cu/8djpOEB3X75JYH8TZX0eX8+1OlLuMjA4cycuU+/tKB9YQPK
	 amE/SLGN2CUcRzqlh8Zvo8HtbPkqyKKR6GX0lMRhdt2Tg6wQqWt6gheYz/1ppl15jn
	 OFMc64+8sHvN3Yw8NySiIqt0lTU6EnKK5+rc7Gry15LWS/VsktA/xn8zYdt+8cH5kR
	 FbPABMHHkWJwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE30C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174985619357.18292.1197242339340097376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7651ab8fa214c4f99c17d1eb2c7dbb6b975cb49d67bde97537a36bae876cbf
Date: Fri, 13 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749856193
