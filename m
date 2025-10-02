Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7C42BD03
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759421395; cv=none; b=ZYwfmYePnUkQamBW8zYcJxYdNN9p9wdv4bt/nKMqMFoTu6DJ0mOd6m+KiH1ullbUFaQa0gk8qGF2xy9/V+/FC7pFjw1VPGYwTTWakNthBjeubCyg14pVe6TmnF8yfltimHHc2+lrphhERUs6mVM2wtr4YGICtWAwOI4wODGPUks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759421395; c=relaxed/simple;
	bh=MHIcdrSl4t4ce3TJ0Z75jzlnLIo0ntL/aDqvc7h3Dlo=;
	h=To:Subject:From:Message-Id:Date; b=Z8tg7d91P7RHZ12EcvKOFsXm8l1ShyHJx8jDZNXoj1ZPwUNT128XumV7BRNoSBa55CWI0fvvznuMh4V1kKCZYTfnvF89k+oCYXnc07DxrpsYxHF08p7AGgj0NyAzNA2INoWP7LCPLxviaTOa6u6c6X63znWBm/6joPiSZfBGuSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rG+ISXW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rG+ISXW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A77C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759421393;
	bh=MHIcdrSl4t4ce3TJ0Z75jzlnLIo0ntL/aDqvc7h3Dlo=;
	h=To:Subject:From:Date:From;
	b=rG+ISXW4Z3JE4ALy2Fosy3GLLl3CqDl7ZXxmD/ExypVzM7dcJK5atNOzmUgqdTKlG
	 E16aveZ6kJXke8eN6Oq5FLJo+vCi/yzk+XAli5NTpd3+V8fvw/RqnhJL3wZVjnvgAy
	 7YAF+PSq1PSfEIGSmPfhJ8FVJJlTxPT1ijc2EwJiFIX3a0A7Kdp98AIcZlIsXrYQBk
	 DmTWKPS5j/hVsu20m2kaFQh8snJBRVa72wIs3pCrgZlL2hB8qZqk5N6O2Dv+lxdXdW
	 wQbkFksKywq6JBiUtkASd8UDbQywtBNrX8Zokjx4dzfR/liOGkplq1N1C8A5UPd19Q
	 cQ1eY+dBFEAJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA7CAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175942139358.17637.10135048698047169184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedbe8d8e148c676da75158a933021c36da0ba73bc4d3172951d4ad0f0bfc985
Date: Thu, 02 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759421393
