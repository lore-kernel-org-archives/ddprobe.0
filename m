Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3A2405C59
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778922034; cv=none; b=D4G8pkLiGnU6aA4Ye/vsAYh5yQf9EpUH/ey8r6Bj0BsTv/wnppEyUKBPb+PX/+9BSEnhlbi5leJsNW3eRFD64ZPOQFPIvh08MBsJx/YBql+O3aiu4KCB0AvOeQCLW2LUxZF5GVPVKrqwE/stYREbskEhtVbxQT0owhcoAr3eQGw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778922034; c=relaxed/simple;
	bh=Ot0XN2Yt29W+DZNAEJ/KYmltsCQYCodvQLFBAePhlUE=;
	h=To:Subject:From:Message-Id:Date; b=jPtnmE91FdP7gkFHazY8PniSVb5H7/z+sCTM0bH3zGZ93TADzsdNmTFKK1ETyyNEU+Ki75R6pSknry1a+f2S5IlUrQBXtBGM8uE3q9H5FiwKOHGZzMCp1i7fALgmW8MtSrkTm3dbSDnRRIzGgniQFQ9U9I6MClUQXiopP7U2tak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lu8J/8FN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lu8J/8FN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7894C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778922033;
	bh=Ot0XN2Yt29W+DZNAEJ/KYmltsCQYCodvQLFBAePhlUE=;
	h=To:Subject:From:Date:From;
	b=Lu8J/8FNgP3g8+h9wT1ebhmAFItCkiC4Jhh4WJxfmzrek+edZqE/gM8DyxL0mGosj
	 HYeU3F1wzTNu0eF2nX6QfWbRNuCu91j+Rwhg/wHbyZPSmF1QxlIL6/9Nr3HHjC97rJ
	 8YIiJkGwlcBMiEoHQdsm7Q6YPxUcbej72ZHx6MKAxtsx7T1bOlRBMAjeQYKtUWffdp
	 T7idRxKTh6Bd0yVp4lzFXqgvSDO3bg8Me6R6gYg/L9kYxCKa/1XUjAiY8McmPlM4Na
	 RdN4lMijqsvTtSXuAGTMIfK7566e0dVlawxEZUSZfxom3sLCUDxD4GOfodHBvD0Fwq
	 UKObvx2XEJAXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2ADACD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892203372.3482.15394693304494345869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f194669aa02520ba611dc921856002513c0d465ca2312cc3f9134bbbfa94ae
Date: Sat, 16 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778922033
