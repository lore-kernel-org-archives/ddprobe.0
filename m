Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32824382F08
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778272054; cv=none; b=a/ZAvSsUKT/VPkafz/14sP8JuojEI39e6X7ttRwBEYHDkFyJJ+cEeGhf+2Tbw36AzD07rNhOJJSukWnJDTH2K4zgB4vzu3gvGJdQGafuMoXdy8Grddp3ZlSMwJgU0vWPVOTlLxrajjnqRfrtfJUy0eKHN3CXgeP9ZD7WNGeBQRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778272054; c=relaxed/simple;
	bh=cAYnetAdz89CAdjV+ldOJ5CDb4HlNrLNnuVDGSzR/7A=;
	h=To:Subject:From:Message-Id:Date; b=LhfZhfRBsqcmNOvppzIBfMlm2Rd5cKvQpP7SZa/iyJFc+95AiIwIsua3cWrp8KwuA98jCXXwg69kmVM1O/YxwoPQR9R54qsH4Ry8qZ29zbIHCsp0vS8BnRwmRO77kdCQ2g4rrpptTWavUsPd76+jNUqqdtb7skKOmG1GEqQ3V5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jtcVxjle; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jtcVxjle"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC869C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778272053;
	bh=cAYnetAdz89CAdjV+ldOJ5CDb4HlNrLNnuVDGSzR/7A=;
	h=To:Subject:From:Date:From;
	b=jtcVxjleG8jmRDpYFyXPVNg5EiDdGtvhYZHjSGppl8Om88QQTubvvKSEwb8W31gLD
	 WwQKJJ8Od65qu6S97Qcyo6dX2B9dPi/W6Pm6+lSWqHtW4laYU2ciXLWbq8Gb8+Pm5B
	 Z5/0/jQu2uWIvaHPiP82pCfHWiHAyWxyf8DOEi3IpjqsSBpPYDE0ieOv5EaAB3LM7v
	 bNCMmkkJzn4HltxhDocRePL4RZ7cA6te5d+8n24Js2fboM3LNLSmz2AKZQDdCV0PGX
	 C8xAWj5U6q/FuOwDJ39OQFJXS8Jm3haavPpO1IVyHgfiJJm0+1sQnkbWpgQLdnMiKT
	 Z6Xkh15Np9btg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA953CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177827205369.784.7165168681254823584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23fbcc2e445ad03e460aa76494ad18375bf4a9bae5d329755362326dd9a10887
Date: Fri, 08 May 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778272053
