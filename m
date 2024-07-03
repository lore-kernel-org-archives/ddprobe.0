Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5318E137760
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720009523; cv=none; b=Lh3q3Hifg0hKsRwtr8cBp+CxCAgeuaC3hgZz39NTzrLd8EzcL8bSHNnuZjBy+hovQn/88K+DO0GaRYXEUMDqR+q53P+0d7a5AhCcJxYg2jI/8+5OOleGgocoDeqyBeXuYZ0ABzaCaz1RIENQ276YlQ+LYqvnZkWSgtINCTCHJpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720009523; c=relaxed/simple;
	bh=ZaOBJd7mL5i0WgWracndmcO6EmnpBsB2u1gEmpBWDM0=;
	h=To:Subject:From:Message-Id:Date; b=Obg8VfDYS2l8OVBLbM7Rts+DFQ63JYnRNB2ZqiL8WUqVX0Rw2gd+ix4wqJ7V/CXa3Ja6NI+PnbW/mqRALfbcez+oJVPWW8aOvSwVL819sMfTe2EHBv0JjSMn9rk3lRfkDMMnbrkNydalVGujWmoTvuoo7JhDJhp24NR4U3wyLok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b5AgHl/8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b5AgHl/8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E371EC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720009522;
	bh=ZaOBJd7mL5i0WgWracndmcO6EmnpBsB2u1gEmpBWDM0=;
	h=To:Subject:From:Date:From;
	b=b5AgHl/8xmwLxiKvXdSrgqffKkcaXeOmSkEDxzKns1C+L6nd0wMl3Oozppq1/GuHr
	 RHMErJWKWOP61i1UarktTjKGo27EBr8QmvLMcO+re5z15SeFOmN5IZ7AQk2QbFHyMO
	 Nk0wBOohtTNmVh5Nkx/GqePHoHfbx4jUC5ROpphgnfpKuKhzlZlvb+JciZ6KBKlQ/m
	 t/SwxlLKWWoPI75l78hPJWCGg+puzrHMYgKKICX1YaVIVEnt6dCUp5dNmV4yh5zoQZ
	 e56SneFZk6MSPRd2FYNRPAtRQW/atJ6B8u0octM+hAK3Jk2haOKd6tQI2LsSZpvdNX
	 +KyC0a9xMmyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9F4BC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 12:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172000952281.8083.7815371859835597536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4a4cf34deee3d4b198c587968e48385db241b3c3d00e684b2751d579ce388a
Date: Wed, 03 Jul 2024 12:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720009522
