Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AE0212FAD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785294634; cv=none; b=ZbQx7Eux7CxH9bCyraXfzJQthq9lqFCrGVGnCllh+kfobWaw1eE84/EcBfVfjqt3IPS/hamBMUKlhezNwySSOJRcblPCBc0MVLYdXhGZ8w4XO4o2Osv9Keq809j6P8vEtr8DdhMbIY2M3hBOT1hkf15yMQx7DD5NEu0UPDUoRmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785294634; c=relaxed/simple;
	bh=4HH1kqXjMjDRsY+Ie8UrIG7O/4GTJEUo0aCIZjJJ3tA=;
	h=To:Subject:From:Message-Id:Date; b=LV/ZPTYtmcmvwlxU05Z8BRVTNomADQholUPdx+BlfkYzNOjwP3BaC/ze4AHl6amqHE0NfgTSL9TtdI8bx7v5nuWE/nKJNk0lMg7wmGmDNmIkRftzlDR3GbYVNCJdnhHOwUfCfzmmzpYdyQLX+x6/Sb70rTXI8tAhb0AkotwQwh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaC4GPOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaC4GPOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4582C2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785294633;
	bh=4HH1kqXjMjDRsY+Ie8UrIG7O/4GTJEUo0aCIZjJJ3tA=;
	h=To:Subject:From:Date:From;
	b=LaC4GPOiNmYvQMZ3n28GrBtHaScYYtaOqWCjINVceMHj4ZqdyUp0d6IQCh7vkJNja
	 xjGSKi8G58AINwZaBqSghAknE1sxlZPraQZOPwXjQe72tvveCiu4o2yVMT6D5rZ5WJ
	 1lti+r/8XWeIT2cnX9fVt0hz+cT6U5wBUNCXVBkjqesxER1oPcvSXamCE0h7NdR7Nj
	 wld8VSpHDYsepABVd1CpaffmoynJBzPCwEjuxr3NLNwUKLSjVLmt9JvskxxwOG1aF8
	 hv2U2gGtAcUfdNClZsYZUTwN2pMFGLdNPZ1vPK1VCVPeATZCuVQvC9sVjkGnnAP58M
	 8eOQFHxv6VT+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDC7C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178529463368.11679.14695589324273756519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a50580fccb1b078d270733fbd8c108aae86004a912ec3ea443f5aa4367525fb3
Date: Wed, 29 Jul 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785294633
