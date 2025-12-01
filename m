Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3526630101B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764603774; cv=none; b=pk18IpL9P4VxjJ53B8KF4/2wbCR0mGocPSFkSKnjk1iYMZnHwsJizcZb3AipepijwDHMQZDZpO7KA0LkLdx5Fre0dLQog2k51AeVcxaVA5N6I1mPPhg97CyLiy1m1Z8C6SxZm6FaLjZ4K/1pmLZxUZmgI1jXlz6WVqLPxNy7Zwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764603774; c=relaxed/simple;
	bh=oup0sh4DoREBeUN9l2xmnfpr/z70bI6qXeAxaYyZrF0=;
	h=To:Subject:From:Message-Id:Date; b=uS6Oibwx/SwCrXUT4/p88uMZQ8BKs5VcFOYfdim7Dck1yFzhXWVftdp1VVG+xp3KJhJacocBz60SNHL7nc6uY3NtDxp7d3a+GkLuhcKoBuCn5kH2hSq4JbbTVZeUf4TrwatirtxMlstII6goF4d2EgSd727vr7h3dTYj3XPBm7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uWtj/Lqw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uWtj/Lqw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0359C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764603773;
	bh=oup0sh4DoREBeUN9l2xmnfpr/z70bI6qXeAxaYyZrF0=;
	h=To:Subject:From:Date:From;
	b=uWtj/LqwKdkpjRfhQEoMeKGhgqK5QcrSCNJ/8CqWM/WoHWXIGkRzreSsy96oMieU6
	 4mUdMiRSxvLiZeEtLbTCNB2Y2354PmEFPVc3D3eOsYcaoMyxrPCsNu4Xu/enoqOh68
	 KHLcbEXq9cOuZlfxX63GYeq/WVNIwuu38XHgj+9eM0Mzslr3zNXyejfgp0x5SDy6mH
	 MWZDKMpENzFSyT5rYRsdtmeh0BGRmggxY8xibRLbYhvxT92vkKlheFMM9FXYccjwgt
	 KFhA+u/SqJZSaZjfZlJKmeYHEhRd1g2kbxbY+i4cWSoeNLuREpcAvZqZK7v3iwea4m
	 bWQLZg8f0ufgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91548D116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460377358.28852.14706136246228122791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dc443540da003f5448322d737d42722da40e31154f079cab4ea0945ef71c1d8
Date: Mon, 01 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764603773
