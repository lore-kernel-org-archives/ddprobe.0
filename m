Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2A9B239567
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774316693; cv=none; b=SUPJO0bV55VwdtZ55vzcbT5TlCgOYxDnRFGzHYCksUmHqAWynDB0zdQirk6iU3ocD6z2Inj6sJPTzqBImK4rH/d/9JjcDje/Jt3wbLdMRCvnD0nwAyeJsn9dow0Jywa+AJ47J9xhqqJDsn7zmor4H42O2EZ1TQHYmj32wTNSKRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774316693; c=relaxed/simple;
	bh=X7kWwp1Ghxje6h9eUP9kG2qzY0qNQ4YeDpC6jeQ4C5A=;
	h=To:Subject:From:Message-Id:Date; b=aTK0HqWoTu2LPF8/rxvDiGBY3o9hCSxErnD0E31qQ2NfkJATV1A9A6wQTqRSkYnCOG2h8Xr+ToN8627GtHFN/nlidg6Xj0o1prxpDs8IB7PDqBypzMc5rL+tm5FlPWE/bHc2qkijfkh6xnUPu42ZbcIcnsEw83QBzo9JAgb8zoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I/19zz9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I/19zz9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E63C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774316693;
	bh=X7kWwp1Ghxje6h9eUP9kG2qzY0qNQ4YeDpC6jeQ4C5A=;
	h=To:Subject:From:Date:From;
	b=I/19zz9RIAlvjAI5X4ODkJGTHBxSeMS7U0cHGWf8/17diqKOlPM4XRus4n7vxEiHa
	 SnrZeeur0uZy9mjs0s7G/TbaWnogd5AFAI755SIvA/W5hhy7S/eP63VHF2JuiUa9Qk
	 DDvQp2ftOzBcsiDEWuB05ywbKxBpap3fgu/UL72xKyUx+GcyMzhE35w8Qkkzm/mtOJ
	 3r+l+uW+fnW40m+lmLteT3loehVaox+om/tTA3P223UDFjOGC0WMCggBr55QmjEqO8
	 86Yb6G1oLbvQ/sGMEe9F6iMOKh2+oPRmZ1wvH4rhCE4V2OjAb+Xv26/g9dIxRdfQvd
	 rH7HLGnBXoZvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9036BF532C3
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177431669358.25037.15985066989986629764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 417041fd1c20166868dfc574c0a0b29532edab943a7fa33cac90b7d1457f204c
Date: Tue, 24 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774316693
