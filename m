Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315831F9F7A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743583794; cv=none; b=V7qbv859Q70je12ZKOxcGp9UAi9H9b9KOVt/6TqzoDXaw4RwU7Ex+imtxJcHji7HY63OwBTWlAVUPzEPgpUqidsW/lUGZw62Y7sEYZ2VXHY/Er55OUNZ+bMpin3XfyN3cyFDO/DpKglCh80g1Y8Wy5BrDj/madaRPOVal3vYqg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743583794; c=relaxed/simple;
	bh=E2O95DXtmFsk01xtYMU9BDYIHB3sjbp98UXjvG5vPx0=;
	h=To:Subject:From:Message-Id:Date; b=Ei1tFFyWPphqujPl2+ldQ2xdGxt4/WPWeWPfe8hP1A55KP6zCZ/z/Vt07A6pj0T0KpVaOWBShvgKX3c63OlI+j6itzuGglHHIr1KW6by6V7WHGzir++GJGyh9PyVWgLcrJHKVwbz6Ri9L3aZPmKffiEYRnAie7gBjJtUaa3yRIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFUjbZ8H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFUjbZ8H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9921C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743583793;
	bh=E2O95DXtmFsk01xtYMU9BDYIHB3sjbp98UXjvG5vPx0=;
	h=To:Subject:From:Date:From;
	b=bFUjbZ8HoUhixIq+Et0Vuljdi+C/ksymPKJQEAoSth9WzUPca4iiW2jpS5TBcn/Oi
	 ETuba7K2e5SHCrC6N7+TW/o+WteeEWYis4EQ0QJABt5XTCttko9oUq5nKEJzK2pdqm
	 lSDYbWrqyqOfqY0U/blpx7o/wtHtZ9hNnX1sdXtfXoEMFrg49jnPryN6g3XBn2L5Qs
	 u4tm2uovhNWtTLb1EHnUo5oFKumuBeZfY9ZID4e44+fliALbNCByd3fV5j6ci1hRJl
	 3PVZEydjmaxfTSA2ckDyyY8ikTMrO7jRIDn43JCRwB3lnwCX8UwS1gZ9gA5kIX8jql
	 0WRYVZj/KDXzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F28C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358379361.32435.14796505300108285909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c858fb22e78d027d05788ca5df4a7065d8835dd39988aef0d32d41a2f0561b
Date: Wed, 02 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743583793
