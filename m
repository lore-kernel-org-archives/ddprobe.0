Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C99CA6F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760939394; cv=none; b=mVSo2nkHdwTOdugngowoXcAYdqB3vraBXec+2Byr5Wyl1hNbfwgKXeQ2V0J9mDIDolSeBtBSBwNM9flXY9uE9lIpHek+G3eZkkYHT9FfoW4lxOqmL59wvleWUOgc85JRpkguhHXmGXeG9aRinxpupO0Ngb/Udh1BNZ3TPfcVhSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760939394; c=relaxed/simple;
	bh=dKJtVwHzgSE4pVDlQIS3TZL3ejfw/2z0AYYFrpB+CRU=;
	h=To:Subject:From:Message-Id:Date; b=TRoxSUUzBrmqQTv7UqbkGCmy54Pz9DUvoPt8cxsm4X+h60teTPZOI1Oo82zL5j21SxPF14GPGIcqaHQzhLz2b2+G1yeDPxwkm5GfmffR0+WCI+T3E0BimvUMDoQAkvhVqcLooxQeSDZtLgUShnkakj7G+hdPSrEI9lfgZ+womho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VKTR1oSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VKTR1oSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D69C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760939393;
	bh=dKJtVwHzgSE4pVDlQIS3TZL3ejfw/2z0AYYFrpB+CRU=;
	h=To:Subject:From:Date:From;
	b=VKTR1oSOAxd0yMnTjksp96U0lXZFpolswRCr+wuDEUfHPhIuV76rP6huosDbOLdbA
	 lNedYtfw41T7AZEWXizV5mfYouNDnj8VVDN4GwXg0SYz2yZL42wGNIrx87r7zIYVzn
	 s/fnMtuYsJ2sa8SVTgugjUj/vWIU/qwJPlOYbmViCKb3Ndt0HnBpBi3jYnhr353eDB
	 SFrErnkNBfr1MW4GsY2hBV2zdPlkYJmFZGGojeA8R97pqRhNa+jKpY/4ZMKS2hc/fL
	 B7oRSJvKSO7ehxXTxBtVwSqcySp5FXFTdV0m6Ku/gZ/C+BXMm8+lkcHTpjxT0jq7Y7
	 ZYF0t2B6/HbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92596CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176093939357.14902.5573311714798984544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97fccc846419bf0ca7389c350072f5dbfe1e021907d554df8ef2471b587c7eca
Date: Mon, 20 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760939393
