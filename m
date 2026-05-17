Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045B34B669
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779008434; cv=none; b=dr8V1fgzabl/Fh1nUNfl+OTolZrulQjE2Me2rSQfa9Cju0gG1RaSZj+zXkAMPlGfSAoiV44GLHmM3x5A0U2V+9p7Cdlu6s0Mgw344kkjmgpSuciq+Lzk7mhzNA/vSMaVfTK7I5iNXJ7B/o0GHBnB+aO3ZTYVQUpf8o0Xa+a54Kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779008434; c=relaxed/simple;
	bh=p75G1GtnW4utW0RzxIH6ja0e8ZER6/d6fgQt/0psJ+U=;
	h=To:Subject:From:Message-Id:Date; b=Z7Psc6zT3Eb1GsqgMZuNaTeuihjxF+iQZRkWCUHhD8icW0K/nQa2l3NSY2qNDKRT/Y+DkjoRVVAFq78HlQfeM7Qv0kJgRVnAsCP4MguYbycjbVx4oysauDU13OwP5GtaRCTdwvLh8BWEac+CLLSjb1m8xlthq9Jaq58ZLrnr5oA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdApRPHb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdApRPHb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C576FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779008433;
	bh=p75G1GtnW4utW0RzxIH6ja0e8ZER6/d6fgQt/0psJ+U=;
	h=To:Subject:From:Date:From;
	b=XdApRPHb8lJD9GBarpLVyG1K1LWpY49cThiNDiwt6bdkyDoWm2oZYc3Plkt3PBzyo
	 H7N5RafptyaVxH98OcVZIp6Igx5OyzMOzJyg6EWcXymQJWmREVwMJkz9mxAem04UO9
	 ZmB26iNT5IWwY08E0Yx+oSrG8QJPqPxbcN2IUrzQCfeGAGCjGr9sJuYg7ix8sEGa1A
	 vbNWovNhpmvuiQqWAFBqWPyviFflGtBeu8oZ+bo2789kA5qWwKxPPOGWpej/nb8ZcY
	 hhZRkl2cjX3GJjc0gBJsW9CZ+QE7XcS9JIbFpy3ZITgKOB24/u+gAACJT5FmZASLF5
	 buLo8XK0I2k+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26BECD37AC
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900843369.32418.6769445641798436980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 191bc9666d671791bc9bc04c1971f5a4e59d9189628872e1c334961932bc914f
Date: Sun, 17 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779008433
