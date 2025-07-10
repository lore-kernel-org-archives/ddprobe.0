Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BC82AE6D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752166194; cv=none; b=OS+CNx6W98MSL5XRIJbtfFnm+G3gKhd/5YNQY9U6bTKuoY/5NHzWovxt1Kpv6f62/XpNduHa0+aFshMqrIfD7lVyMYIuVhqNZoHJ3SnMuwRc8B1KZyzB3TfQGoMjx9YWRwB9Paq/cVUlTdkvlpj8qFkkyek2Y25MXWWRmkaik+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752166194; c=relaxed/simple;
	bh=a74ksAT1KXxO+2Vz4xWFfgqjTj2LwUJfrE5NaCNifRo=;
	h=To:Subject:From:Message-Id:Date; b=AjgDi7+iC47D+nIvnZY7hC6itNtIytIhZHTgtXp7/krHsX7ozPSczDHMlZpUy3XcHvVWBiqu2UISO2US9gUWK/rol6f5v+JhlVuzBokKKkZvihccjQwdcIb4r+xHuGWHK20Jk20S8VtGFCFFSMeoAYYAdDRMWW/zS9H1xon2XxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+4+4Znx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+4+4Znx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF9C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752166193;
	bh=a74ksAT1KXxO+2Vz4xWFfgqjTj2LwUJfrE5NaCNifRo=;
	h=To:Subject:From:Date:From;
	b=U+4+4Znx/FPvOoCQx8ClKjvhAcsjoRBLB7ASECZEZpBk/M4Sldq0Rx1BC5I500Fkz
	 Q4SYLo07J5XVUC5puR/D3h6+0hXdTUmtUG659XcIbRPCXrhuy7TSyTT0xPE3IX+KON
	 MNVNX4KFcObvkl6hoo6QCs1OWnNK8qRd+1xAYoaBkClJnMFccsw9s9YmlsFMoqBL0a
	 XsOnsgjcWDpSQ1KND1OigrapPe8SPRQryEKNVu61YlDdNtYD2TvCIO9dJEGnLPfS+C
	 4mDb8G2nYyP1vTgLpPigokn7p/XBjCmMSh6fjnGEBkYaYy9FL0OfxUhabXMJUf5W/0
	 gJ8bsQeD/34rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9293EC83F1B
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175216619358.2426.15937104971644089502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7b612d39e1dcee5fdc128a333131932d88a6c7e9b13b04484aa79f76a30b874
Date: Thu, 10 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752166193
