Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDAE3271FC
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765779174; cv=none; b=H8hSPTzDwnUZXwY1rIanJOEkdo07IzWbpnM0NCnZGqQbkHdoC2hINakF0EqhaXokaZ3MPJIaIAe+pTIAgsxDa/vvgspOCnZ7YeZNv4BZ7gk05KQoYOGxh4sRLg6hiqJ+l6F9iT5LgTFo+BDaORQSPhhVmQcPRaqoACSxop2fZoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765779174; c=relaxed/simple;
	bh=V+kFET+kr7VPwRV7v6L9RulXPpkNdHJeVbX/4nqNl0I=;
	h=To:Subject:From:Message-Id:Date; b=Pq0XG0xCLCZnbqZx4ZVQfmR4lq3c3vUUFeGO1mFT2oJDipPjTYhk61GlJ6gCO7JH4hzArmMf/jRg1QZd2lE4MLLG36B4RLSt/JZCEpsa4C7u8fHhTTGBhS7AFeHIO22TdzhA6QfgNV1LBMKgLy4Q3fuM9T557cZiZfyPp4gjKQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Huf7TNxp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Huf7TNxp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4063C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765779173;
	bh=V+kFET+kr7VPwRV7v6L9RulXPpkNdHJeVbX/4nqNl0I=;
	h=To:Subject:From:Date:From;
	b=Huf7TNxpkpBFjQOCQsq3jpOnFswGF/livUvLoyXOaCHP7OT8w20K6ozAR4uuZV57k
	 i1s79DF8TLQwPpM2sdbyUHufcmVirOnB7vkb5stopo7qrkrLwHY0eCQXcu7/ZREx7K
	 YL5cOzUkGdeE7qQBscYc2t2ZgcxB2U1tLQLmkmEVR/9AW81vvv78xTZlqLXnEDRSTn
	 71iNuVyzGdCettcMEVGibOSOXGxau4FxC38gvH8gCmhdbCP1uTliJo5StY31EUAn/h
	 BD/vkUs9ovjD6EMdkhLi5J1KD2zZ2yHJmXNGQ0q2/Tp27Yr9vPSggI70VKlcov2Zj+
	 xHOpvdU8WsmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FBD59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 06:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176577917358.16676.1898070023069003525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763114605b94421c16fd657282852da4bc15b89bc1f7513a39155e18b4cd2046
Date: Mon, 15 Dec 2025 06:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765779173
