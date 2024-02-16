Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5C712EBFB
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708094896; cv=none; b=R2YMKFLS3JeZyLHtjG73JGQazrnxO2rUKgvLVGRnNRA1rXlfLFn7z3SUC3zMR7ZflS4kBXvw1K6F4w6EEpVwpXOpnFSkidlI0zd+2OPZhakSSgpC6irXHLWG5MaQ50yiuyMK8oZQjCu5Zd9i//YZYYqru/X6tIwl3xUmtcI2VQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708094896; c=relaxed/simple;
	bh=yFt0wk7hdTEcYjZL4v+rddf3l3mkU+fqpBpESJRu6So=;
	h=To:Subject:From:Message-Id:Date; b=rn+VrEMalxsDqwpxa0AimM+4D6Ee336a2EG50P8kPVnCtmFwimg2P4DNFlf9h/xbOt39L+ncjla/0nwjT/2Myan/ZGjwTIQxg/D1PikzF/6CFxF+2Df/1LpW7MgcZJoMvkInyJ11MOVze0o4mhnKXyYW8XUm4eRrE25G7Dpi9g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2Jz2hL+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2Jz2hL+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7402DC433F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708094896;
	bh=yFt0wk7hdTEcYjZL4v+rddf3l3mkU+fqpBpESJRu6So=;
	h=To:Subject:From:Date:From;
	b=a2Jz2hL+qfHLcossRbBIF0/1OHRbV7RPh0Lv4fZO4k/tg9FpilxQWBv7X2ZxaFw0q
	 rkUzOhOzVo5OmbYdVnrHWRNpt6eQx8zC3QkjILkO/dFOyUteMrzMPm/vrgOBFntrL2
	 s6KXGgMytrRIWRZcJPDhseX9BbqbcvqxMT1XId42kiczb52qHiGkFV4q5rCGfy7JsK
	 y1iKTlejZn1L9tC1uH7SsKBzB5OenGU+omOZybUsPSqdmqDnEWPS2CoOll34g+6j+w
	 q4pdmGa4SXOWMf1VmHZ45K2kiwdV33L6MbytmdGKsX3C8hrAHW9gsny0I12omAmBra
	 fY3F6MCA8P6Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C29AC48260
	for <ddprobe@lists.linux.dev>; Fri, 16 Feb 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170809489636.392.4031871138415749077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c46d4d86d3dec7b3b30ba78316c19175dda3a4b42e3a145898057d4656091d1
Date: Fri, 16 Feb 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708094896
