Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3029229CE1
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761414594; cv=none; b=of2ErsGSQbrLglmm49x1XKBN3cn90CNE0eZtOuTXTWPnyHnWq/rVNxyuW7wOgHm3UqYSmW+Xtwi7wEERMbjUMR/Xr1ioN/wrHnHYrXP9KWhwOGUbkVoRIgzdJPACL8ltviNkBo6io6KCsH/JbNiROcGEXLYJszeaz4uoHD3yn8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761414594; c=relaxed/simple;
	bh=qkk/aqWGplSOwFL+XLY4QHAl2zD9gWhD3CwE+5DsI7o=;
	h=To:Subject:From:Message-Id:Date; b=MosKKJ6HbOgliMRBa0sTIrrz76EpLVhX5x4YFrHyxPK0DhkNzX9W+EzpyKmbGeLa6A14xk0a58RM2HLBb9+HQBTFN6OWvWMLq2VIVbFyjv/TEDdeZ9FHbKlFwFumtUMm42Nsso3TudfiMFHaqvVt3DUXVN6faR3W82HqlF2TSCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tu1zDFkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tu1zDFkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7F97C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761414593;
	bh=qkk/aqWGplSOwFL+XLY4QHAl2zD9gWhD3CwE+5DsI7o=;
	h=To:Subject:From:Date:From;
	b=tu1zDFkFriGxij+daI/qO8+mKeo9exBO6dHFuqdNLRm4RkDk96clO0L1wZq6N2MWo
	 7aB53mD7cfPjrbIQZdLjgXdohFPeRLvklsHxonNmzTTlR5ERyCVGxKUdjNl78WoD3H
	 BhP2Yr56wHMFOWumtDc/Z/nrBmprsJccWPam8fnHFfPfB+0lPEqqoH8iYdyxG2RvXy
	 NLX5VVbQQandlwCBs25y0hWqkBY1UZoTVzBwweLf2I8A4/5CesPNfgF3vljhYD9mtu
	 jGcSXpnhoV5rKtjDJjnITLVHJ58XXnjbtHMaPafzuK5Wjm+o1/t3TvSCOCmgKc1vhM
	 UkNUKODFS5L1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5875CCD1BF
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141459357.10950.3644693414438946222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 446620f4cc949c32994433555368f46722d7b7945b80f260a500ed3458c7209e
Date: Sat, 25 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761414593
