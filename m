Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA422E401
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754993994; cv=none; b=p6LQIouufiyHTjnxmmruFSmLPa5wy7ET7ApFA0Fa7dONWoj1Bs4YzM6hxBg0ofQWPcmGjF4qNlNveiuy136LHIYbDQakKDt/najLa2RxFFT4u/Vppn3LEePdVP5ZZSZS3/Ri75b15izlhaw7v8eKt5dwgIOaM6h6Jjq+pSG7yiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754993994; c=relaxed/simple;
	bh=6SooTaUJdxT7zMgudICtIVlxTKOTt/9TlYNTPQJCMow=;
	h=To:Subject:From:Message-Id:Date; b=gEk6vR1Ad5KCNh/uHZI6KVYs4g+at/n2B25nagVepUe9PbFMRBF9l6YI26g2doC4GxUWHOXyTbKxnq3y9A3sb8uXpLZ5hSsRhs/cNnmQX0wdmFlmUNG/8sk+hIyLPF83Khu9k/T+7EvVz2aFfUwOMnxi8FSU5O+pNGJBWyKXYgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZFwQrQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZFwQrQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C31C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754993993;
	bh=6SooTaUJdxT7zMgudICtIVlxTKOTt/9TlYNTPQJCMow=;
	h=To:Subject:From:Date:From;
	b=uZFwQrQ3z5HgsPHyk120Xp7hc9d7fRTnwL0KB1UGknOTc5hK7aX82SV9ALcnhwCKr
	 hclva7eLhV5AGI+T4qQMNNcrKFUxQOmSpByS2iCrEU6UOTbwrplgE4xO5zRbTTdsXZ
	 cxG7zxYb4jlDZzjYfopBMWcWMjmcRPuL6x4qoOWVNxNBvlPD49Z+1vZVqaM7A8Yvv3
	 Tz3tCeetvFNSjVOIkjjDYX7s2cOak5TDzfys+ccyOdGcMcqBV+nf1jmgXD54GF1Rf3
	 NnJbJcs+SPn72VMoFK7e9LlBiQFmOLMp07/SSG0Rx+S8ixMjsOZoXLDlTMRFS8D+SF
	 ohOVeGmvOl9YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA19CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175499399357.23094.10732224326901649614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0889f3c4ec637824e6430d913a50538010c09158f9697e6ec16530693b434910
Date: Tue, 12 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754993993
