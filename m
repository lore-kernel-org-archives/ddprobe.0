Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47408215079
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738833954; cv=none; b=CrIcID6PlcPVtwre3GWXfGkuRxeH8jTK2pmskY4fThnj6mLfGCy6PZPJZEPARO5JD2f1LhA6GTfYm7rtM6ksOtZveGPsSEbxJlRGP15AiDVguzM9jiCxtkhcFsI9ki3owC6Fv2pVcnyfRsBG9DWLzdrABypWXimTDiVPw6TlkMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738833954; c=relaxed/simple;
	bh=boLMxsPbU5zLn+/0CEz9mifgl4DyxvFHq+1EJogj7m8=;
	h=To:Subject:From:Message-Id:Date; b=AMPyB7VfHHtFEbTSvFND3wIwKsWyivGHlPS63FJgEUxtzxb2dlEANJTYdcvRmsU2yR5eFPMZYNWZoGMc6lK4w4zvRgd0GBBu1bK84nXxfIRBQyPAwl0bxYAF8GGZ6h9fZaylNxWYrUzpvXOH1byELGkIwI5c9qAvEGv5bMLuYHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9QyI/+Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9QyI/+Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5EDAC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738833953;
	bh=boLMxsPbU5zLn+/0CEz9mifgl4DyxvFHq+1EJogj7m8=;
	h=To:Subject:From:Date:From;
	b=W9QyI/+ZHB9LyLPa1dsFQUUN5TD4Wd91CobSdxGCo8PO5A13JvuhJWFe5Es7YkyZQ
	 NyiDpHb3GkB+6afX0h4g4rhKJGTPjDezpqHCkMLHXSkMb8yBr03Gd2GwkXHIpElPgx
	 SpLLO1OZeY85CYrH4FdacsYXHOSIrjRAwhv2/3NF4rD/God3sgUJY2ve3tID/id9DF
	 hVxQTUHUO2cpgWaxqLA20HH2TsdYCUrGhPEYBgRBCou2LlnElHm+KWNWU1Dgn27Czm
	 g2qAKvt7KUEwn14hlf7wWj3ZQd4uxacEuwZywpBt4i9fAWgcL5B1FbKs1XZv3mKyEO
	 EldeeqRuvwmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D52C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173883395364.23164.13359689118987557930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bd18f52c35f4d664897d37a76fe142c08c47b1ca63f658bdb496d9b258e0971
Date: Thu, 06 Feb 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738833953
