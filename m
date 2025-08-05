Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AF018A6A5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754402394; cv=none; b=n3kX8V9rc2wri6c/yhFcUQ5zsZoDuSC78x3F24O4hAhR/w4O8nQX5Y6+K3bAsFmhqws7CXjP+yorODHdRhAAZ/Y/LkwKs0+3K1Jp/OqB5/I9Lboa15Xp6ovQn0SCXAAdzl0lubfEK7dDSGYeih2y6uJlamSN4/7Cfe5L2wnVg+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754402394; c=relaxed/simple;
	bh=hPjwUzvLX4UcXb5S7nbm7y9z5eaeRk8mdB8fVw/67WA=;
	h=To:Subject:From:Message-Id:Date; b=IeM1YO/uBiuRHUzVcWPcPTOZYVBVfkfN9AXnxMQxkyiHjUJMGiNbFn7CvxvrjiHSkwVWoRLVvXZLyhF4ZmmmwpZBuQGy8bMr7uJ/o56E7nJjSxmicrQRpd+oawJ/Tro55lc1kAsbzqp9GUVoXCkzsVcauR3+QbTly3VsZ4rSP4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/jA7VLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/jA7VLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B5BC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754402393;
	bh=hPjwUzvLX4UcXb5S7nbm7y9z5eaeRk8mdB8fVw/67WA=;
	h=To:Subject:From:Date:From;
	b=P/jA7VLZ4uDTsFiTmDDAYEzgnsZ6W1G7fkZw3TWZPUxf9ZMxM83UDuQt4OiSdQJVY
	 z6TIeazunYeSmAHimlZgXfxCAUdMp/l2ddpyT7d+E3W8nK2+0hZ/NzcNRi4tPsF24P
	 GcNSpKzHWcxMFZgNXc8+8krk0uemgIeafFbqqnKE75MOpEIObxTncX3kIXhzwoGius
	 6+4DNMWyGbevf/DL5hLCwYZ+UiTWIgsh1AuCppkKdtkRQMJtzVw8Ra2CLOxT/C5Tb8
	 W3rA4kyqvxJV65kZ2zjbrMfxJIUpK+9FE7FzlIbVV8RBJU6+QzquIjPQ8GxoZwVbC6
	 1SKz+Tnmm2KLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90187C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440239358.17892.11812921347483872984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18abfeb1e40768658f80e0702369062bae8038329c5883f71652b0734deb805d
Date: Tue, 05 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754402393
