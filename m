Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B40D221D92
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741367934; cv=none; b=KBmGSf+qsCP3TY9r2cEJw9lrpYx0yadsTfPXavLyZyio8Ae+qw131RoO6b5t/lGbGNiyyFeuy/GOn0vpHHuGcsO5KbsmVIGPufa20YU60/ThVlY9aHbsTZv8Rbi4dFahU11/e1T3m0aNe7eP7lT/UgFopqXu000xbCl0XMaUT2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741367934; c=relaxed/simple;
	bh=PTFzBDYaCY4a+Uhdio6n9jMyoSSxOVg9twlAC9ROpuQ=;
	h=To:Subject:From:Message-Id:Date; b=YFX/rqqe/xB23mz20NEf3WIlTrxco4x1nn1posWREvTKqgpdjcsOe3p/P6plfaEMnj4o1TvQX0xci2W7AVXn9Gfwav+NEVrsM1VHHmFDnDomWkBzMMiNtI6QMH1o0Dijdha/ccnE7Uv3ITKZL5mcoE8Sw48ZHFa9t2bcVxWgM5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/3/qWXJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/3/qWXJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D36C4CEE2
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741367933;
	bh=PTFzBDYaCY4a+Uhdio6n9jMyoSSxOVg9twlAC9ROpuQ=;
	h=To:Subject:From:Date:From;
	b=G/3/qWXJs9zAhyUn/PqQ0kQ3ZECc1W8nqH4nJpSkiIV8FcS6U9SOskz4lLl5HSZrF
	 zysfWHfKPu8ULRfTediMcYrDTe8J4XyWXx/tUjMoWpo2eNXJqghfd77VwfOtBAfgjG
	 gFn03gV7tUsG+9kIO4UMeo5G2f6kqvl6R+DM9VSWWUNLPw3doWge9B8wZmjHc69ufW
	 5GQj5GOoOO8CQhtrf53KDFJbmFAA1aZmigtXcp82vrCCfe8U2t4hhRK8Vl6/NtCerD
	 0oO3PvFACFxEDTw+O+d5oaFoG+lx1ph1m8cs3lALKSTNN+LHZ9roh+AGPmUQ9Gvc8T
	 7+YyYr3ZSjmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93456C19F32
	for <ddprobe@lists.linux.dev>; Fri,  7 Mar 2025 17:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174136793359.27018.8447040982971932815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd662b53d256c0fe1768668b31f86b588696093d44dc3435fabe04c0c78c18d
Date: Fri, 07 Mar 2025 17:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741367933
