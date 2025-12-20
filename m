Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B8E91BD035
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766259834; cv=none; b=GVQzXpo0hGM30N04nVZChlBf68DEcCIJT+YE/gH9CFxU1FyEdbh7O+Yqa7Ae2vgNXRIRMLTqNyWza2Jl4OXjBJC8ltkqhMdV9fjEZdDNE3HsUI6LUP/bYld6nkfzhIexv7ZlvVsgUhXGKTBbyAi5rvqCPuTm1aRMIhFGo0a4UPk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766259834; c=relaxed/simple;
	bh=tfFSku96elOpr/3Lw2ACkyQVF6RM1LMXjDm7B3BMaAg=;
	h=To:Subject:From:Message-Id:Date; b=QShGk2J/hEVTvI1yySK1GOAkWZyVDaqdIX2Dhei1/YibM6R+rXx3/CLgKGcMsAOHlyy6TEtIcq65wQ7i0fAtgDyEG8SvZsLiOY56GMvl4U1m03S9vj8zysZJSxk734Nos9RUxRTsFoF+cWMmo0X1NtH+K7Hq8aZhJB0HAIOjMag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZTEtAUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZTEtAUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A616FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766259833;
	bh=tfFSku96elOpr/3Lw2ACkyQVF6RM1LMXjDm7B3BMaAg=;
	h=To:Subject:From:Date:From;
	b=AZTEtAUv/SpdhbikcXf1VS3VABkiA7IRLQ93TaSCGOjI6lVjbmWfh1zYKEmQPRQ1K
	 CAhuAZrr8Qzocx7m0Hk1AYQgskWywj5tq+YUdH4hl7fmViRoeWyCo40p6S8yKxdMlM
	 1WdPX64X3826c6lEsmY+o+worTWPiVxqn9AYx0lkAHpw5qk9aADwtosLTsZqwlO/4V
	 Y6xwM47GPCA8UpsTTkgQx4f/tKPneJD5FAd+D2/w8Bc/axyoxtczRazRsKNdWFEwxr
	 QCbLonppntS6jY1nbUR96vZlUfwcZgkWKEE5JLbeff5Fb4q8iAPYKBxbe11iA/X1hH
	 r9qV3iQnukX7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D37E67481
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625983358.9032.15305159193558451035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4004e7e7170f55e4c5d12ffb397e55daa04663c2c12e4c2f4a360da2492f9db3
Date: Sat, 20 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766259833
