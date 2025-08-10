Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA63566A
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754825995; cv=none; b=s9GfTmhYnoQVPkbFybRD1RMVcraiDwqvZdub6MYJlq+qQzxrsD/qQA6TrxRcVR0mY1pYU8n6qUfHlWHmrniVmpnWohxtxmr22bed0sfr88G6oFjRQX75MKrJd1U+MpoDa16MRU2ndIWmbc//Mi1IHc+Lj8O+WNHHKSqLwQ1jKLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754825995; c=relaxed/simple;
	bh=IZcy0Jy9yy3xMXw+9Qb7XLqHXPYcZg/2g+jqryGtyZE=;
	h=To:Subject:From:Message-Id:Date; b=dwPALdjhEah0icyP6PJYyPZ2WXicGSla+TH0OpZDHVCEjuKdU/SqxEkEGFgOKRGiYFR6JLP7+ZuXcU7f7nJ6u0KxMYH+vGAQIjPTGtgkFlkjxJoSPQnXOTFbYfIIYdxbAT322FQlCdoS1f5v7LGfcrQ3IwEjdII/5f/Q0VgX1XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tes5GPhb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tes5GPhb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D6CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754825993;
	bh=IZcy0Jy9yy3xMXw+9Qb7XLqHXPYcZg/2g+jqryGtyZE=;
	h=To:Subject:From:Date:From;
	b=Tes5GPhbt8td3BHoZK3WmGt3wU80NQFbrKpTS3mdRfglvnsPinHLn2cKlGBrujCxb
	 u/XppEzoOKUumn+4uM5ownJ1kjDhLbAjDSPVagK8CYrzzKWat0tM/j0cAnzbCgXcbT
	 7ljbOsyRz74XQ05QWrMddFMMYWqjQedYx0yVZVvYMPAUR6TrpnF2W5a4DHvEH6h/C6
	 6f0t6P5gChTnGdGfpOblEx06wTdAecGYlCZkEEka78+PboQMeenaylsQ9qy0HRg7jC
	 YBjCs4NeuG8awmJlUZ8JQwjX4sdGvcSIP6rj6inLYZJTi2xDgXzp+4/y5I8SGB1n2w
	 HfixjtqXi6qlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92818C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482599358.7504.2691157868359291422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215915ce3484bfa9b61ce46d88686dc1bab1e840ae3d227aae79cf65117d4662
Date: Sun, 10 Aug 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754825993
