Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8CD27F72C
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786020034; cv=none; b=F8XUMIgbdh0ibVwTD5zr5bciwew6J+h65aWYRhfgjADE1srKxuEyba/oN8oo96hdkiRLU5BmaALm45QZKaT0Kk4OMvKEO0UIG6/pZDND6fTrFYg8K/ViWeLYLOL43C4dXBY0Ka38RqLGsX6s4SybolwJhmb+yObv6cA1kLgIW4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786020034; c=relaxed/simple;
	bh=D0HCxxyEdK+uui6x6s2xjt4eSnH1hLGWO9jM/uyG0Gw=;
	h=To:Subject:From:Message-Id:Date; b=KNRl0eHwtogci+/OFKn/UqKtBnLhV1ySbubYaWl/qD0j6/EhmCwnFIvzBCLpKfIdz/ZC+5bKyVwoleEUseck96JIz+geDSEjCNPvulUblwqsEE2aEhJxcOfIKMTX5wUhCnNSB2MaYy3YKxsrGPrDOID8JBqVmiczQIdKeUf0QWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY2okgHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY2okgHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45D5C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786020033;
	bh=D0HCxxyEdK+uui6x6s2xjt4eSnH1hLGWO9jM/uyG0Gw=;
	h=To:Subject:From:Date:From;
	b=AY2okgHcO4KBqTojxjJNlq4qhmsB+mZ4LxPTbBIBl+ZBfMP6HZcn+nVw0q+A/PwaR
	 HKkNyQDLn8PuEuks+ssX1bqdfU5eWPy0f7TBjrEA1aRd7K5kShXlef7VXmc4brXGg3
	 VRMAdt1LCltErxcD9ScVt/HS0i4d+FALptv8LAUkYKH3kxUWXT8rrxHhtnI7y9IXVg
	 faNWuCySqrdRAH6PF2z4hA7ThnTWkpgp53WoRcbJykaX7bneG7YS7N/klrU77hOrk0
	 DJxlT683ZaI3z6BDK3WHMqH1zGJD1k9PrCXf9aD4+iqnsijwcD2ehZqiJnU0jbIrDR
	 DJkdKTyu1r+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF6CC55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178602003370.8669.5527417727469002480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71381608f8bfbb19c036b960525f67e68084f50b73232891362ecdda7464f3c1
Date: Thu, 06 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786020033
