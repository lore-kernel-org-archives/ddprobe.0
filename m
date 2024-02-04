Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C4739ADE
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707079697; cv=none; b=j0EAJLG8b8JBQ1G77iOJGIZDo/znegV0hfpOzvb0AE8QpN07XTNKGb4iB0TEUr2HEt0vVf8rj9HUYJ5FeHAfVol5c60VIHISPbOuxCdhBf5gEdDnfbJ5hC/4/tQ9eqDdOy3f1+yTIKxZfCn4zRoB14ezaUPltnrEPRotWT5IAdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707079697; c=relaxed/simple;
	bh=CRs+Aq8586XliUB2WZRQj958Xf1d4XHvbA6jSfcjFGA=;
	h=To:Subject:From:Message-Id:Date; b=Wzt/t3v5ogT5ehqL+ugdEeX66i/FmbhspSYLpgZ5J79r2TUILpnIuQfrfgwbb6CI4ilHAtaxMr2yjd7fqzPVaFXlGLgrdCSVRT9SBpoB98ZWW0P2i0wJDROX42t0qwUyVK88JVGMkh/sjXUtMzqBOgVKTytaQfW9lLr5Lt9Jh4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgvWat+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgvWat+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 836C4C433C7
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707079696;
	bh=CRs+Aq8586XliUB2WZRQj958Xf1d4XHvbA6jSfcjFGA=;
	h=To:Subject:From:Date:From;
	b=BgvWat+tUjIYqLzP9SpOBVKFYC6ywCzoqagOjN5Za+9mS0OgwoTz17asEROgRJCsp
	 X9fFHGR7qYL5h7r33aa8yGklukAhAzz8rFTzQUmY0HJ7BjNX2XZIvyR8z4iXMC8+2l
	 GxhQs4zCX7MD26VIuMuadcX8Mqf4nVY8NubY3eh57mn/MSlJ5PxC+oDbV1+RLnNejW
	 s/8++5m7yELcV9gVDnX8jOLpmbxheD+WRSbrcnm7URA37VSw8KLU3DnZNoHSVhUWnz
	 AbK5+2Bah5uf9N8RjkHQQCwrmkndPR6lmzndhtmdZtl7C11ENoT+gOnyWBaJUgeHSw
	 Vf1dG6b/XWrAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ACE6C48286
	for <ddprobe@lists.linux.dev>; Sun,  4 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170707969639.24696.12995793594232138757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19e71baa0bf7da1e099d1c0deb6baebd01b15fb3c094e896c2d4cab5ecb0e433
Date: Sun, 04 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707079696
