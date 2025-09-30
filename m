Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3CA6222560
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759211993; cv=none; b=AMAF9IHEF1xpzAdpP8rs+Wmf6STzScA2HwAFzABq1z6giGI7WUD0yjzCkENh34nPBfnU1qRqP1v1LMwi/cMytgL2gku6IdPpXiYT1k9Dm/3ajI9jEOJT20P6xIGWz1pN/JL+wT8XpUlJSQLyU/JVeyMQau68vHsQGzXD8FbvifE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759211993; c=relaxed/simple;
	bh=6jOAgm/QlwSlyutZjEuvlCm5K6RfweEtKLIvt+CACgI=;
	h=To:Subject:From:Message-Id:Date; b=aupnVAF5seMz9pqUN/193D/T3nTVak+AXi+PthaoXSHEL6D3rr8GsguarPmINI8GncF4aHzi9fcJ8tGtfrFbW/gkTgLCDDKRZh3GvzKsKMSR60nuWQhF/WImir7lyszo4zrR71gm+As2HOQ3SxgIS4s5yjdIAF9SznhzEIJu9+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLT7NkIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLT7NkIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1BE7C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759211993;
	bh=6jOAgm/QlwSlyutZjEuvlCm5K6RfweEtKLIvt+CACgI=;
	h=To:Subject:From:Date:From;
	b=YLT7NkIk25ezLUaM9Xj0NuH9DdCq3e75zTon3mE2Tbmsl7eXyg0Q4Z5YAPkM9HW7M
	 D/gNzngmSq9whTzgsSrRegaOhQ8k4s0h2wXTZa9A0d6JU3g3kd2MV30NdZilPMnl1g
	 QTa5a5p701DklM7WMY7Dhpg1feLIJBkk+bWGifEo8SjNfDUexLDNUWW0RQ3QO6abzz
	 laPH5g9L3TjrHXPwG8YrjPeY1QSVNkgychKKpipZ/DggnFb0pLclnpP++WAqdEByHD
	 7MY/QQmXgQYma73e6gciuKDfZSf5qwRhh4NbO9r3Vm8w/k6+e6HBw3nNvclI/DDKE+
	 Yv51LkSRJb9FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A56FCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921199362.9083.9020579947257429526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 897ba33e25f1d9d7ab850d0a06737898ff31718b453d4861a0faba18543590c9
Date: Tue, 30 Sep 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759211993
