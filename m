Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3021AC141
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759586394; cv=none; b=diqwOyF4ya31CfnNXV09PnfwuI9UWCxAO8gvq/2xdTA91kXGD6dc7EccLpDp2OffgH8JoDZxI6/oPQgL7mX54neyV3kPpXhaeFPcuKWJWwOVF6HrTIIV65rdg6RvnkuWS5Gi1XHmVkUSbk9dpUCD1X2pKFxw6f6Jvk6RV78KO+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759586394; c=relaxed/simple;
	bh=1ZnWq5L4h+p4ejuknsZpxdwKppUUcn0/5izrPzhTpGo=;
	h=To:Subject:From:Message-Id:Date; b=i4Y6JGYLzXYIpKMf6Y9TFrJ67bNjlBDCSsmwgWrlxI2mmluR1u1V7tOvU0hvJxGEPdEpFBKlo1K7yQeTlgnoA+VJOVxCMZQU/0VfQNCYG72fqijYfXwkCbFEN/YGzZ4aFsY1NwGaIPzOeoWORfxpS/GaQYhgg0lUpDHdQojxFPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNa/t/D6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNa/t/D6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6668C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759586393;
	bh=1ZnWq5L4h+p4ejuknsZpxdwKppUUcn0/5izrPzhTpGo=;
	h=To:Subject:From:Date:From;
	b=WNa/t/D6ZApu5+acIEGVOjm+o8ShNsukj7g41k2MMT4vF1Pb9xVx5TgJerfmJwucM
	 QKS5zun+CwLj/8jEdUk7E6U8iCM5p8twVG0R1eUNUjDxwLHVDV5krlq8QoEDHQC5nD
	 aJJN5DV4zkNzlXX/n4NAbi/h2qij0Sybs1DiOAbL60yoqLW4fa+g+8WbCfIuBXPiiH
	 2zmsjIPcdYlWctnOIyZajSjReHkBhCAUjV3EUJ2XRvD4zsFgTXkFgzH7MRlgp1KIJD
	 upDMfZm+mP6PtNMaUM0eWoLNCupr2qvg9G+qmmPDkc3zaPJP3u3My0urFh3Q2Za5O9
	 kuoEX5ITyhHrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95409CAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958639358.15865.10996859869280748284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb66f393978ae8f609ce2257e0323e7d62fef685467322f2834c645c3816fb49
Date: Sat, 04 Oct 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759586393
