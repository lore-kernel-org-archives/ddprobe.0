Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E9DA26AD9
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750547994; cv=none; b=Y6RxFXe1MhnqMvWNj6T5qVtJ3Jz3pDibPWKdcQnZkjv6+i3QOTzbWXXrsRDkU+2RXbH8WQOACR+c/U5NOqbK56DOBz7qmzpqeyw2JV6nVJhFJ/VrgIwiRy8e6U9HFSvVNiDw/Ycu1lLH+fl2kDzvJs6Zb1luqzvAl7prKvnBacw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750547994; c=relaxed/simple;
	bh=dHmgXkfZh16UYBVc+Dw8yvcDRQCB4noe0yiAPRoieF0=;
	h=To:Subject:From:Message-Id:Date; b=tUpuL0mIbB+JEi14U6jxbhv3Dxo1wQZZyIusae04iw0cLTNyIo5v/oMitLKtCweTawGIjS/zju2yeZ93H1sDiRiAu9f6NBLXwA4k6gBV8u4Doj7rgBio+Ewzsz6N0hydSr3n32pF8WjSpKhdGy5QLPhsPOi/GYStZlOVKPK+rOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAbvDccV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAbvDccV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A064CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750547993;
	bh=dHmgXkfZh16UYBVc+Dw8yvcDRQCB4noe0yiAPRoieF0=;
	h=To:Subject:From:Date:From;
	b=PAbvDccVhieVr+UNGZMj4BpzDCIGcJFRJJQD1CqXRLAL6kCdTAbe/AJGwDaCuXB/b
	 JdM+zUo2dlctZhAFYFes/sNbIrEAJGvmHeI5NY6HhF3TEGugHq4B2d3jlPdE5JIBRA
	 FsWDzUnvEhVJ0vABjG0jktwWPOMYpbRFSSsUpsn8oMEW6TlASRAeDjj8epMrhvvnQH
	 bxBz2UmRFd1olnU9xTXMw0DwfxDI5fPE6XSxf1IRZ4O3gWFTThFFiORIOtKLkARNtj
	 rvC5DVYafFJlqEFVb+iGsGiG1jTdscOGb+pCgG00Q4rDHqXv/B85IqMvGukbLg4BE+
	 8UXmnfeOn7+Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6BCC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175054799357.7296.5108477302976009532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eda9a9b6c54263a883d62d72261b086823b1858bdfa4abb036307dc781889e4
Date: Sat, 21 Jun 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750547993
