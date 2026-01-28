Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 086DF2F2607
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769634234; cv=none; b=n6EZThlY2JXD4PKjsjBRp0guI1EGKOoaTfrJCYlfFxT9uf3Tp10OA9/W6kcB3CddWCcvG4pbaYNfCF4telN1CUWfzyBRflGlywfsFr7OiTWQscQG3mGiDg7eZXJFXApaXArm9EQdYDtJ4LiJVWPSmw50HOXRH0to7UQPR2k6NXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769634234; c=relaxed/simple;
	bh=Pe3l6lb7LnFrhpXXG+YNz11EjDqqbwLcT5LQ0e30oXU=;
	h=To:Subject:From:Message-Id:Date; b=fqkN1UshLAx7LP2HcpmrlL5KqyYTlF/HXp6Fk0b1I/WqerQNHSiVCDMFPt694urkBJsYlHoe5Z7cLwQ1b1gT+5aWrzyF2wX7Ko0mcMoNspleQ76UwjzZd93WNgqErUIMZ0E9X1ULw/pK8HlUn2vHY+S1NYhwcql1D4UZazt1zMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwMAvB7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwMAvB7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0466C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769634233;
	bh=Pe3l6lb7LnFrhpXXG+YNz11EjDqqbwLcT5LQ0e30oXU=;
	h=To:Subject:From:Date:From;
	b=VwMAvB7iT0B1R402NhOtq6IX1BMNzjJIrXfJCLMTHZ2mQBxiI+bBIkyV4VzTyZTZT
	 rRg8P97v8iAc2hZ2fwRa9f6LOOgFaSuLKzAEiYpA3T5riwTvb25DUMpS3Xl5C752s+
	 uWZpPtEta0c/yzgtlThDC0vcOBNHGWJscLVXyYjCxD7sg6WeDAst+GM3Nb80GyY9bz
	 zUbDF1VxNNGlDbak4hpJQjgCXDWAlps9cy6uqk5zCOfnZc34O0pOcuJFer1vLC7rbf
	 NKJrITUb5oOMCftI7lCSdehqBo/sHRuC7n7efNqHbLGM7xfGK8P1s8wAPvQr4RoRxx
	 +vF6HvSIjUH+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90942D46BFC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176963423358.23308.10260221636918245338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffcbce49945dd249aeb44279cb4555457337e3d3a01f699f75fa9608d587bcb
Date: Wed, 28 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769634233
