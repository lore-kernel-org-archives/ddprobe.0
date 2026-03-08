Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20B4B3603E0
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772996694; cv=none; b=T9Hn49QCnsf4zocKMheO1OSuTU+HAG6ES9sCq/g00hAXFZzFBlRbMfjCDN3hlgWT+vm4t8xCzrtIDDHjwrTwu9e3DLwKM+6yGdnTSq8p2e7wV7zHcVyJLEwY2JF+lop4GIMgJMM4nm//naQeN9KfyddG+v2lTgNiSCUJSi2E/iE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772996694; c=relaxed/simple;
	bh=xUeuohIPH23tHc0dV3L8eh97ysJAsNJfPyl5OFDj9x4=;
	h=To:Subject:From:Message-Id:Date; b=kiXW+S4HAQMmzNruk44Bn5rKOWG0WC4ri/ce2oeV+GETLOI923wfCv++2DnSah5oCF1UAHCkmsE47MvERoacltD8gXjWJn3YXt2UObf8uDdmVXdWYi6N92mkDzZF4Rt8a3L8sec3PIxznA6O/WDetYX+wpOmSMfpjj0L9l6ZvN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZuF7V5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZuF7V5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B842CC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772996693;
	bh=xUeuohIPH23tHc0dV3L8eh97ysJAsNJfPyl5OFDj9x4=;
	h=To:Subject:From:Date:From;
	b=CZuF7V5svu4okK+E1AZkXld7YGiG+KXn6lgijw/qbqIQOly5kE5puOCVX/yvWSA8U
	 yWNvzLG8/Yoqv9wjUaFryRdwgLZZbyxITCp82HGFVL49IRCUe9jDoRcNAZ+4dE1Zbv
	 xvwqjqz+D1sZKWDnpwg5l7Z7o1iwXsM+cuGjz/boJ41bqw9bUQayxjh5lSTt89oEq1
	 XFKG9VhL365Jbuk5dUYFYxR/7m/7ImQ0dOiAZXFZV/1Zfyr6n40I0/hZMZBm5xaUsj
	 jSWM48Ct6kOnCj7ONCmQAWfMIr0e62PNC1HEEgOt18AaAcRTi7H7iez7hBd+ND59x8
	 917M7/RfqFoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E17EA853F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177299669363.31577.9213334325685174453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4b0f30d73c22eb4d1dbbce34754958d8340bf07eacf669f34c2bd3f42fb94e2
Date: Sun, 08 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772996693
