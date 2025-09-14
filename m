Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 118F21E9B31
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757889594; cv=none; b=WddD8gkfdOKSCdSt+lXp2sPQEB5tbcjSlBr8MKrzC+wN5tq81utIr3ld2zufxDpZ2JUQjRQVyzcWeBH3TRVRFz47dD0H0QC4LYEhYxfsbt6jJibI3Btdh8NnXwdErtzUpd/tADWyYC+wF7MOR7abBbVaXrlrBkJCUk34XIX9m98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757889594; c=relaxed/simple;
	bh=XoFaLFKK+aDVOW5p8/JwqxHhMuKyywJH4sz4UI3Zf6c=;
	h=To:Subject:From:Message-Id:Date; b=ri++bA6hhT0JdnD1KAM9NUuU2gj7Hf+SwznaFxdBE/h6d1qTaAyHy1e0Eb3EldI7euczc3E8S7Iti41+dZ7oTnPAnUujVF74WK+3tIS4iic4TBRuuVvHfNHYU0XPueANWm4VYIr/fnxD9OiA2pvgnqgFSPlxfbQsrN6nu65x//E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fSbtiZVK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fSbtiZVK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3379C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757889593;
	bh=XoFaLFKK+aDVOW5p8/JwqxHhMuKyywJH4sz4UI3Zf6c=;
	h=To:Subject:From:Date:From;
	b=fSbtiZVKlaQi0GBfC1OY2/6j/4KMCsNZ05eeWUcLLbUQoaL/33pXpFml7i418I7u8
	 DkC0W9OCQ0bqpLGouItQkGZdcSKf9GYCyB7TPy/VtqCOBeZDYbtSKkBa9W769OGp13
	 3GgNgWihZKV48i3y1ufjqNtS6mhBkAHDHorGleMPD6Z+p+/eNKkUKDrfGsbtqp83uq
	 NwRDU5Ay4/8GWcULeHCUpKw3ZGYrwIZjesxXXa+Gw3QcjuHdUGDlTU/afWJivFGoC8
	 2s0KRUUJkoKoHc03w/2pn8dWmAJnNI6ifAcxK9q1YoBjoohxfPQkc01Cc3Ls4GOkos
	 1okmAGkCD8w7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91782CA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175788959357.24862.12178149444739126956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2506366e7e454a9ac8094bde88257c4fa86584e3fd455fed863f87a194a83d77
Date: Sun, 14 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757889593
