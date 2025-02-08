Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C4AA23
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739033154; cv=none; b=FYjEW/QrOsmV5mkFisgvob+xCSOEJL2R/jFhYApfyCagm94uDmTrewqDCu4UA5C9aYjRSGwC8IuiqoPwfqh2lib9xIp/TOo73so0Ue0TiZiAW2K+R1HiAezvk4ht24O76CUIutK0Y6DTiabVX5NPlVdTmk91l3snK0Tcao7Uo5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739033154; c=relaxed/simple;
	bh=8sZGMJH7k4vzHGOP9fyOi4n7G5GT6hG+fm/rSfB0bCc=;
	h=To:Subject:From:Message-Id:Date; b=BhOpz5a+kOBHz8rJ5NFEtbEHFZuQpfUUQYR+ieBz/JR0FKgWjAOG8dF3e12Xyr6d4DzJOTIl7UfliujGvW3N0N4E+HjlNwcboXR/+X7ihz2+Vq9T4f2keI1Mf2ngbXVx0I5+4g020bVWZQw4IfxWKOyE4BNXDBMXo7G0jGlrWO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nfaHe34O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nfaHe34O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B593CC4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739033153;
	bh=8sZGMJH7k4vzHGOP9fyOi4n7G5GT6hG+fm/rSfB0bCc=;
	h=To:Subject:From:Date:From;
	b=nfaHe34OXZcHdoZKlKC08vT1lqm3RzLOPSDL1LZkjp4ApbCc0gaTcHVi+UUFjs5BV
	 KwBFt5+420PklZikcUmDHMzVDqRASoEW/Mpfq4ST9rgGPxJKbid/OdnbPgMrTuhbcc
	 hXn5+XbNAXm+dKVxUTZmEzMbeNfhh1Q1xusm2m+C2+SuQ2v7WyR6ZvNaUxNMCkjK7W
	 dQwsTBLvEv7u7s4z6lzEsjrnkR7EjUCPeyU8bvPtYZr+YW2P73RmnvgXZHCO1IIvS1
	 6/bMM6LghB0u9YyeesdYGluqBtntsISlp/Y/UVD0n9Q/XYMUveerISbf2nyBzdKG0K
	 3SFcmgYuywQ2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E351C0219E
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173903315363.8350.14651059382096235242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1a245bb85dee1afc4f399865ffc558758dff4ea7db2174ebed2fa0478a64dc
Date: Sat, 08 Feb 2025 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739033153
