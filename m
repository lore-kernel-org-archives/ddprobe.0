Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A26D2EB5A6
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755853194; cv=none; b=unja8L44Nn6DNpuoDtjeyqI48Q31syC0v/r+6QsnAJgPYZk7bR1ju8MEd6EKzA8I0g51gykKR4su0dYAHt9bTXkwX/+vGZR0uDIfC+liQGqCKU+/h7nTnkl0sihmjVIu8ysjnIPrLB7QTgUzh1PKb2KMgW7WqAZsbkZaAmJpLnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755853194; c=relaxed/simple;
	bh=Ew/ti4BEafEeouXSQ8z98FBIOreU6XCAGeF9eFk1MkQ=;
	h=To:Subject:From:Message-Id:Date; b=Hriq0DOQdVJCWPEnl+HuVCeVc6wRoOqQ3nbznVt79O+rflN3r0ETDroto5LPDmvpYX9FwIdG1Cbm0z2isT4hDqi0tShuxIW3AZTZe43MOoqtmbBf1DqzCGmhYFk5ta4+p6al1hOQ4r1dARLzW/cPwDlPKwlXwkmXvCigEipbD7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkdKX11b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkdKX11b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECABC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755853193;
	bh=Ew/ti4BEafEeouXSQ8z98FBIOreU6XCAGeF9eFk1MkQ=;
	h=To:Subject:From:Date:From;
	b=IkdKX11biwbUnfGrt5StwBwTEfrEkOjVxyds3fR/Tfvc6F8ZvvzNMRJrBmRLg/qG/
	 zQq9HMlBVY8EijgkRYr5QEyCzVs2i2AeznyHuwQ+VO4+EepW5IbSlsn/vwN3jIHKHi
	 oVXFMOWkGl7UdJB8vjJS5xMQ8oSelkpZHpSHL5qfqcUaG2N9LXE+2Yye60nUQoje5q
	 YkkunnyQwrU3aRcTOn6EVYrqr6j9EjEnZW/j4tt6kf0jZnUr1wG5KI7ZMKeDN3LyMr
	 sLyWKRCl55oTmH61goDsJsddVAeoMhpPBUSBZkSENVbaWEf2xh59nkQ3GFnhufZfr9
	 O4h/rM+8Iq98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915CDCA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175585319358.18463.11605399322785722190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 015478155995f95a0c64cc548223cb836951e8378dccd733808043ece7947b3e
Date: Fri, 22 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755853193
