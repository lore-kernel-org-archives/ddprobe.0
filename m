Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463EB770E2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740202734; cv=none; b=n7Va+1cL1kvaHI+1FsfwLuig/DuKE5Ge99MHtIbparrIlt3pxtY21ByTuDnFbXP/ZspIrnhYh4UNbU2c60ZM+P4nVyG2laufuft7Jr8tZuuLiA36P++cTC9PCfOr5tnVlQ11AfUvvK1+oFdL0o0rLWIiO5lsbjORPOLz0TfHCdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740202734; c=relaxed/simple;
	bh=71zrFY/gaPd+Uij6pchLUyOkz4YGVH3Z/7dUHV92Sms=;
	h=To:Subject:From:Message-Id:Date; b=e46k1L3SDyB026gv+kaA1d8Kjg+py7bPMg7EvtG4b/14zvpn4TFraKiompN/AmgHGC34qgObW/axUhiSekiKNmKwBOG6Di8G2tvcKwzqLxdEe8Ma2O/38uAt6Mgi4qs7goufPx+gEE7CexSXCX33yVZ+8PjOqGJxWBDx2H92YFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IH/41Fxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IH/41Fxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC859C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740202733;
	bh=71zrFY/gaPd+Uij6pchLUyOkz4YGVH3Z/7dUHV92Sms=;
	h=To:Subject:From:Date:From;
	b=IH/41FxyLy9f6wGT/+aJ7QMMKkTJuYX3O9WZf53vuGtlX+2DizRjQfIHq4VT3VjGd
	 eYjyTEHxhWO/N2ROkzz3D+j0ycpWarT4C2/xFwLNFtOMD/VzVqBxN2XrX9zSRixQzf
	 YvX7ff+qCw2TY5HcVNbSdtpciJRV90Vpehnw4npj5I/nH0dRFYLuG+ORPLX7+Ujy48
	 1VtmBXz7vWqKzPH7o74iP1xKgDKMrFsUy4nd3gxd73ts6ovRbvuapti3IfD2v0UBjN
	 TpQ/wGEkoh9HFg0G2AwoRMbfmuzVvQyGM8gao2aBDOw30WMa3j55dMH8xdhxDdevIL
	 fH7miNzKH0o+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559BC021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174020273359.28615.6029030608805208116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cfe976fee31a93e9c60eb78a2851dce296fe01fdd997c351b24f83da4928c33
Date: Sat, 22 Feb 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740202733
