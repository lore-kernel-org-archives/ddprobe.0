Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE9F54739
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753706994; cv=none; b=IF78wdRnkEyOJwNhxb2+FUOVTioO//3Gm/ZeaYS7zHjWZz01n57ILSKhumqTtOiDXuen70lHQfCFWczctML4NObSeDa+TnAD1tLa3iHFzz3vtZqFkVt3r3r/aC0jiv7koweYDBoD13SfusZQJmRofzb+/C6xQpuxSHCMCtbx/Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753706994; c=relaxed/simple;
	bh=/nfvV3gkWbFzsrrKUCfHV3JrzUT69Fv2kuyZsj/1ifQ=;
	h=To:Subject:From:Message-Id:Date; b=Ul/c/+r9S5htHoLO8QYWuhff2Jc5Ns9+4ZXD+BABlSKN7lC3z6xbyQ5azqEKKlSIPmrppIv+613Ef8YecbMpGQSLgb2qC9AJPOm2fwEhtUB5wexFW8Qix0kxPMNC6hsIthWz7QMA0oZc4oTvEjG1/3yrSyYxyOjSrvnrEMZUxDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1OlMWoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1OlMWoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2590C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753706993;
	bh=/nfvV3gkWbFzsrrKUCfHV3JrzUT69Fv2kuyZsj/1ifQ=;
	h=To:Subject:From:Date:From;
	b=q1OlMWoc+wPplUhHEfXwwlGPx+QdjpQtwhr/kUWoox0NRNLKQuBcTkNfvhx5hMSla
	 UaBHa+KKCpFQAcUHQQIq6sQPFVEmdwkRK46pPBEbqOhBIB/jaUKHiKviB9cIEkGWg+
	 ePcV9juyBJr7tUfHJGg/asC21iIKrXGvzurrVuTkJicuCQEpTstNFGg8/EGA/0sYxG
	 Gw4dY8OImjx6XRAFHBMmKxZZkViEhiSyTxFpBPox0BByrxB2OQCTfnD6zIuu+yyNZR
	 gu0/wuMz5fYmVXR5Evboax6GadGO0wkjLz+pHhtVKuPrXKotQyXrSBtuzZas3y44A/
	 bNo3Q24wc4usA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DCEC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175370699358.30950.2962205843756154302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ec618bb824904b3e539fdc04c3fb968c24fa63249b4ef061d6fb782139df6e7
Date: Mon, 28 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753706993
