Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4974A37B007
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781022934; cv=none; b=aZ/qWyX1xHM2tf5ogPzw/o9y8afRX6sWub63K5XnNr+rvOcOWKhtr8jmaD3R2RBR4eOTCgWEGjxHvSP7RWbzrHM62GUbW+oS2qN5fVoroajlKh0xdhEqN7BB4qZqXtbrSC+ZWQRuK5ap475zzm9GBwQRuYmpyVPT/FKWhpOdOmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781022934; c=relaxed/simple;
	bh=F9d1Fz6y1hJEkQYdWkvZUdtOu12EvOGPdRnhkBvmCKg=;
	h=To:Subject:From:Message-Id:Date; b=fxZ2SjgF/fif23wRGUksKsweG+x7KIMxCFbV7+y0gjQ21ejN2IrsXWD290uN7hc/Hm4ddibBjXy2mlZC/bV15I5YeL+3E/OaPa3s0kpBVXnsZgEaRvwO12zI49BPgCgbas2sUODh/z7FJ+AvqcdDKK5RFftRKjxe2yf1OBjYsZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bkdkRUZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bkdkRUZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC27C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781022933;
	bh=F9d1Fz6y1hJEkQYdWkvZUdtOu12EvOGPdRnhkBvmCKg=;
	h=To:Subject:From:Date:From;
	b=bkdkRUZQiLpc6HQY8sPDpkOM6tHuejhU1/2xrBlIUGwgqonspS0QP1mW4l65KREVG
	 15ZgERZ4DyFxfhaqjOUsNswc+WyxrrKRghS1rBd8PtzzbDDuLIW5URJL6yMKy50yFq
	 srhZnU5e0V4Q5yLZWRFVgKinFqyh16/5o2os27ArE9QCsCngXVSn3LRP0NAg+IOF6G
	 uGjqgQ81PAifSuTo3wBssRI6r5yCnAom1E0Wr5aXYD/r4+qdekhpnqSTfFAeZ7NxtE
	 27dMehDemJm1Yx7dj9WxoweMpbN7xr7Q/npeQ+dZ0lb5X7C4EXK/NyvTadsoHPefIi
	 ae2F3M1H3lqqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAE7CCD8CB2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178102293375.6665.14517686126726126759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29afb3c2ed84097edf9cc7fbbca738f2312dcf4fa56c2468ec407303e438538
Date: Tue, 09 Jun 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781022933
