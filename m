Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25CFC3375B4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755806994; cv=none; b=POdGSpY7F+QmqGCpDrWxQ16f1bY+HXbr/KJ8VwE9TQs+VqLEtuAGproP5kTrfUdOOmGP+c/6IQ8gMUYVSISTaGDYvUisGX6kBt3aoADyNV0yXuFcEYpB97AemVrruRPx6ictr0oVBsvvxRXxZXuGzt1kXbQxQKPrx9Vu+ZUptS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755806994; c=relaxed/simple;
	bh=zVXZhxGUhZWptriHkn+JnFLPsHDwr8PKtWL/AnvcB2M=;
	h=To:Subject:From:Message-Id:Date; b=sSGestibslz0fPNVE9TGOPJ/UiIVRqMhtIKNuDL1j3namPYx0F72sRbsQ/zeQZpOLEl44TOAEV2pilTwDG08bQSnnm6uFijgzORVyI1GtCmHCTfccswyzjRAGvL1mcm3hu4wZn244Wtz1dxdXfUMtebJkeB4rpqtPlG5utyYv/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qKxaH5HX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qKxaH5HX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0500C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755806993;
	bh=zVXZhxGUhZWptriHkn+JnFLPsHDwr8PKtWL/AnvcB2M=;
	h=To:Subject:From:Date:From;
	b=qKxaH5HXGBi+GEK3XL1dwL2E/+aNrGWJ1+OO7oTpF63NiNonFw8MSyFGOo9RI2eZG
	 vDaiFs5buGh+oq8eahtnYni7FeBc9B/o6ZQyH68lsnytzMBeom5SrWljIouQdeHqgq
	 oe/TT/SI7/aGeZMvufdKeFU5JjNWh4h1JPfYb66Y5QRSx+OKUwsNS7LPcroa8eYz8z
	 FilbhJIsj8S2Zm2LiAzvCYLwdFvdq3g0XmPJztgEo+PoTu6qYD1lfXpK2aKxbWo5eE
	 igvcj2VJb9MGPmgpEJ0YEivtyVDx8vDEhbYD7hmSfQpHVhiM4oQVPB+nU6BocVNkoO
	 KZEbmxSf1lKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7A2CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175580699357.24053.2420130246808093077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0477afca91199002b95d3ed748de211969881d1cfcba06106418f2e464c8096
Date: Thu, 21 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755806993
