Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21CA931ED8F
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766479434; cv=none; b=SW/UpqVgg29N3awt8qaxptEBHz9o0cK0+c+7FReVHHBBSImcWA58zMPS4a9mVWOVAaL2aT7X/dUnpUuiJfNNkqkGBmrw+E7/jC2Xs7+JZNFTsNnc3bae/6fBSvr8ob7bk8StZQ1PsMEPS+k8mOfCm4n50r0d3dZc8u37K1JS9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766479434; c=relaxed/simple;
	bh=b1E7zd0vOseed/wNNr7z+2+IxLw3H7ima+sPpLzDBvw=;
	h=To:Subject:From:Message-Id:Date; b=d5uZpx7vN9NZdegA4a0vD/3CBt2KAapjsQVaGzNZ13eUqUNX3Gqq6reEuLiE7qq4Zn/41CwecD4WdK1GjQ5MifOoYkzYC/ogwjsnU9syNDKshaTHUsjHrYT7okAxfi2/hGYlvhUL3sYUpm1n653hobLyOUMiW/raZHsPf0c3cT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogPy7i8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogPy7i8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DBBEC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766479433;
	bh=b1E7zd0vOseed/wNNr7z+2+IxLw3H7ima+sPpLzDBvw=;
	h=To:Subject:From:Date:From;
	b=ogPy7i8xPb+nyp9KmqBWH3pu0oXYfMY8B9XSp9EfD8djay4CpBlUwe+C9xxs+q9Rf
	 UYvR6QLiwkCK1tDl/C3MVmjdKL7W2H3xusiPSNcPmtNG1zVXksKBFuJXeObz8UI3uC
	 KiFP4XfnYaPBtnVy76ZaEmhY4sE6KBqqpnYFJ2cwP0B0H3xkI9D/ZyfwRSuZpLtcU5
	 AlaNJ6wgIt874Wzs6m1JA7aCvpFOq2sU+kqVV1c8UZsGEUl9aqkjBafj6+N1lwTN/8
	 9W/xeDHNnrylHg9XZ55j2XQCN0xPAJy7NAGSrDP8z4CARASxX27TUmfjq2cPVbnwU4
	 ojfE/JBFVJ4zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F06DE6F06C
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647943357.24883.9382686104715259865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efaa9d545fd11498a18107ddb23a887ad5f62208a163104061b0163e9dbf185a
Date: Tue, 23 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766479433
