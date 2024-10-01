Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67BE82F50
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727809554; cv=none; b=DtV9HA48MvqgC+MWFNR+KSeAXpDETnnvr+zE0FL4pTG13Lsfysb1U0Qa+pompnSSRcAFm9ACZ/9oaWqAeHAujm9AL+F3c7LIm1jRxBFnaLh7d/CJBMozhvNiLuZm0tY1rNroPX68Yo+EgZPwZnj5KJKA39ciUlivocL1wD+ISN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727809554; c=relaxed/simple;
	bh=1mQ7NZiW65D6CXStAQcRTJwaPABzFlfAFdfuG5JIyYE=;
	h=To:Subject:From:Message-Id:Date; b=FALFVEjArLFTlEKoEyb5/5JMpXmBKy3EGpMt7AqzP5W6G2NRmXKLl8/k9YN0Ll7VJfBbpLW6bvgWYIx3UGUDgebniM4LDKKijOsXA6Vz/c8XP6huSM5HaOZlo8GiC93gJTE+ptypGZqyl7a4NqVogIs1FT+Ag7ehk7b9odw/rFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+rtM1lm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+rtM1lm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFBBC4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727809553;
	bh=1mQ7NZiW65D6CXStAQcRTJwaPABzFlfAFdfuG5JIyYE=;
	h=To:Subject:From:Date:From;
	b=B+rtM1lmJ23iE99aZ6mxARAx2wqU7ZB+JRpm1C9LfZGPyldFMfP61BPq0hSD2TtHD
	 TNE7ySND/kCjb/BvFBNDyIvR6y0+q8ntepL5gKmuR/GKjBuOapM3Qq42bLfYdIJz4c
	 zFON7Ute3KPoR2ljdG+EfS7U72kIYyu8v3Y9CWz0o1QsLZtYAsn1AVfmfeeQuo3FAd
	 DkxXnq2WcxhPZDXejbZTWGUePLEoJFTpPfb28QwKQDO7d7koXeSLjDAvjV5rvr/n8A
	 +F73YkEABt20tQh6rI0psivim5W26GmomLp41u9JzYZJsg4FcLq05dbHpYuES0ti+I
	 P6cX/7IFbravw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC584CEACF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780955364.14968.14021380799120612705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1377acd078764909708994f12e9c7156896b1e77135f4d054abccf040ea63d56
Date: Tue, 01 Oct 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727809553
