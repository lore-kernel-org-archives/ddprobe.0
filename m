Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0C817BA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723976754; cv=none; b=DcmJpD2GR/Ez4XJimZ20hWtgJYEeGNowwn/e59wACtsAlmRtUZfjukwSHsFFVW8g8JjD8Rj4+hKiPRI4jNus11z8TlWC25G+TVfYtMLZ/A18Nq7xFutXQBSexEnke8fLphad7U7RKh0PtlrcHfHFK8mdzPF6HzEyeLve1RBd6cI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723976754; c=relaxed/simple;
	bh=52t0dDFT9WdwKibSl/vTYTmZNbcH4k2cSwLBkIF5JHU=;
	h=To:Subject:From:Message-Id:Date; b=EYKmVPLlOasiIS5xc0O7bRkmaui+T3YbepM3RsakdO9ov1whkVufl3ztBcZ2t4Pr/FCqnGqOxzbeCqfqTm8wfCguf2x2e+jJ+adK/7y+CWHMm1WvvPDCVGWH39xj6+MQ0i8u7zME4ak6NIEIv9/xgg55THHNWt3lJWuZDui6L0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srBbUtBg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srBbUtBg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0501C32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723976753;
	bh=52t0dDFT9WdwKibSl/vTYTmZNbcH4k2cSwLBkIF5JHU=;
	h=To:Subject:From:Date:From;
	b=srBbUtBghZS1b/2SbboVKCspNmaUu0swReX5ZYV5gSOA3e/Wl3fmbA8ptfud4KY3z
	 Fq932sSBXX5OElbFCPe2UqcWQU77eqqMmsu099NCh3mRdmTBtSPKlLK1IqVcAFGBfa
	 E874/nYIU/kHJsNML0vZ+phlruXd4ZrW7zWd9/Axdk7KBuYArj71fzwAPuBMNvOIHX
	 GdazJ/53GCKSpookoMkK8FaEk/JqBe8ULva5rZ/u6fwPy9z9OqjPvbhcWlTIkHyJ2V
	 8Iw3/Qp/NtCbOrgWBG4Mk2Y+2hcvd4BaJXbDGb9rX3bp7YgzB6WQECpaBv3RtNhhKa
	 Xy7rWaWzabH7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980A2C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172397675358.963.13467160853476172530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcd69470527195599d1cbeaa91bbd68ef8891e6db0fe275dc8d6585eaedbcec2
Date: Sun, 18 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723976753
