Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A951DED63
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746863995; cv=none; b=Rou9OLIJ8SUFwR7a/iDAZC5oosITUEOh7dzD2lmU9Kkd0243kbokGO9YezpGGGcQa7ZV+X0f7YdkN2mlnQtk+Jk+0+wUzoHCJc74v/ycnyBZB7OI7RdPo2V2+W7wyKIrBryh6L6wD2Ws51kwnSeWq3fm5CXXQxKvmQIjtB5UPvQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746863995; c=relaxed/simple;
	bh=7Mbfwz2lGoGuz6NeYsrZTUmWq3jUIIMW17m62OLeEbk=;
	h=To:Subject:From:Message-Id:Date; b=ChHN6oVInrm3hH8aYddEm6Y5PVzursloV9EUvYlTzuMtenbj2ir4393I4StR7PhaKjOETOs7OzRBmGPOlKLtRfWmNEo56znTyD2B34lpNdKzYYUN71mVkKebYsAMqFjWXSBF88VqgyaKl0FIeUUso5D9dGwVfyI9/9IQu3cDlfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9j2JeXu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9j2JeXu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5406C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746863993;
	bh=7Mbfwz2lGoGuz6NeYsrZTUmWq3jUIIMW17m62OLeEbk=;
	h=To:Subject:From:Date:From;
	b=I9j2JeXuoyFnJNgzF2Dp3H0Ti9A96i+4slu4/0cEjMmImt2saM2fv7v6CS6oQHu2j
	 i2PGifA7c/2GGPdnZW7aKy+CdBe4C1+XiFJMIY6VfZBrJnT3AArFx62k85qPXBHVsb
	 0hiH6hbY2bF2N8TybGMs3NKlTIfvoiL9uq+vzHRG6ZjHiP7l+urCKnbkTFdLtN4u1l
	 92gCnPZZwPICVND6aVyQ6WQhMxc/jafa+mEeVWozVBJMrupK1Zp3cIP8SRUxgxrbX6
	 sFDmqVlkXtow3p/6vcPUCC4zQnXy5hCb9Pyu7AXd2zbWeCEmJ6RjpPatYaZrrOPIVY
	 RsXznxgYFRvdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F714C3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686399357.16097.13453629881718064269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1b6d9b32e0c37138d39e7d5a194b248717736eb2d17e1b19e8211877160c03
Date: Sat, 10 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746863993
