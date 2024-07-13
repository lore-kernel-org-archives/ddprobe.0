Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B92441C79
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720873823; cv=none; b=C4T0/aDlNGeEKAtWdJBHAOuleaxeiL0qnGBF1KrhesCD9otxVyVZiKYHgbRbqhKJqY9xLtA02cu2bGl1Xl4FPAr4rqPDAS/2JlPwmBuM0XMOwvPqWXgIxXJtEkKlh9AWfSuXES1+ofEOIbkXBJ16sgYW0L02+Fn7SWSPGgeovjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720873823; c=relaxed/simple;
	bh=IfsKfI1VBn3LcWhX0mcbxtTvSqXZMXau1pWggkKQ9Ns=;
	h=To:Subject:From:Message-Id:Date; b=ALwy1rzKM4nTKs0EiYQNJe55R/+bGNMQ3M4b8lR8Qc9lgIAHdPnOQzcxGpjtWFOxnyE+zx01mqq4ALH30x1Gu2OM/eOWNjOWIFvDdlmT6CC80aZp9A6Wp4G3npvP0hfzYNQTZoUT47QB4Ieiu3U7IvLwj5gWSEB9eto0u0mFSvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVU4KDSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVU4KDSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECC6C4AF11
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720873822;
	bh=IfsKfI1VBn3LcWhX0mcbxtTvSqXZMXau1pWggkKQ9Ns=;
	h=To:Subject:From:Date:From;
	b=oVU4KDSXQjsE64Cs6fzjKb0HpfHOXNSLYtzfLjeDgxNXf3C9NtqunVcgwCUvnOsw8
	 lL23YE6kBKIWgp8Y2v9SHKkP2JpnyJ3FYxAYj4JYO0ImL+J0uJXtWBaB4/WUxwmAxS
	 8J18Knvo7o/mEJ0gYJdFT/FmVg93S2WxvtpinTj4auwwYFoepVD5QTpsJ9fS+BCkFj
	 xp0MosyuikwkFCQK3GVbjue3hj0wzJhyOlixioR1rGm6964Jl6ZR880tG4O5BYPlK9
	 2rnfudEU9HZhFogS0ycPvlaoD4+s2xEBukSHHyJpVeGqYR6l0Sa3jRyOr0HJXlipXl
	 Mg9Qrae8MGxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A30C3DA45
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 12:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172087382280.12600.18093707173257203536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc166e4f160050d36a57f8db18035e0451315e048ba0ebfadee904d42af221d7
Date: Sat, 13 Jul 2024 12:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720873822
