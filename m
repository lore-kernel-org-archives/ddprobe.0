Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161352BB0D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721409954; cv=none; b=T4kZJDc0Hqzohyh9pWCps2x6mgIEIEX9hIv391+nBVfml2VGOManISfK1YGhPSfbLuTgAKA3Gf4wUDaLQGazyXvD15JRoFdFB81lRTWeAn/O9SGw7gUqX3l9FTSUaVD5MQOcqFgBubN0S88Etlx2wy9IpIkHPWmQLb0tKbPgPlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721409954; c=relaxed/simple;
	bh=A83c6zwN2U+b+rn3eivGpn+4RZivsKZubIRlpHonxPs=;
	h=To:Subject:From:Message-Id:Date; b=FE4rj4xLGRO6wx3/T/KTBYVkkhhZNvxwEWE8Gh+/VipPX2ddg8sD79z/LXYZZZXeKn0BPKYskfnGJXNhz51MfUpqreV1qQl8hsl8sfslz7HsodmLVV6K3yczuAJHj2UvZwHZRH5Mbl3AKQx7NVzY4cpCUcAkp/yntt4uyhIJGo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBkp8zic; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBkp8zic"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6200C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721409953;
	bh=A83c6zwN2U+b+rn3eivGpn+4RZivsKZubIRlpHonxPs=;
	h=To:Subject:From:Date:From;
	b=uBkp8zicNvQsNL+QkmMdEZuUGtemKMsxdEeZN91DkoupiBXLoBRzLsPOqvu6/EJUY
	 9/Wa98f3h09Bp8tpw3U3vE/9TDJ4rC6Ybrxfbhu5sWGLOUzRJxgTGTCoFLnzj8p6sW
	 fMn41QGdEjGUMwlOaxL3CiKO6TUHB5qLTeYFLuWuP2szbVxadLxo5wBxaIZ1RbA//J
	 mw2ZY1sPqYxugFb2FNrWnxF4C/5oHJmgF/Qmcppzw/S/SUA3wFjqryO7nRev1eyPvO
	 D6cTG96i325V/HOkYyteVbr2xSg1hPblYITWsooExwxB1WMv7egoOoR+bxNJGVnkmY
	 H9k6p0EuciBAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FDDC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172140995359.3984.17927672384886874227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edca83a2ae3729aab59c0a098ac10cf6be73f5ab0d268f79f3cabf46995dc224
Date: Fri, 19 Jul 2024 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721409953
