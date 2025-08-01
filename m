Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382BD16F8E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754084995; cv=none; b=dDcRFRD6TlDaWtYcvO1Rz4Ip2GeIVYDKEf1HWagckKsvhIA2V4plJUbh8BfiHmhU/1+ZrVmgItDlS4qiu1sNXEFtWVQvfFo1jOLzz8Ii4wDO9dIm0DvKSGVuGcHA2oI5LhegIbTIrBEiQv943VUpE7k7cgUdk0uyGFwEeqGbNV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754084995; c=relaxed/simple;
	bh=hCYxNDx+JNoYVXfar36MOErrdd2MXDrAePZBxRMjLEU=;
	h=To:Subject:From:Message-Id:Date; b=EbEvcHYrj3uFW7eMIQV7CnjDhGUu7GQAMCW+w4l3cKDJVPzyKsbrgbGfLI73dME4XH1/udczB4whO5a/QPSJR8J7Wn2noyigIBQqsnuEWQL+eWcnV5hRu4i6BbpGOXY24GoIfTf+qwujAp4iXOMtXB5qRMzLGu8oZ+9VjUCh1PI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R9mnqvPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R9mnqvPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1526C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754084993;
	bh=hCYxNDx+JNoYVXfar36MOErrdd2MXDrAePZBxRMjLEU=;
	h=To:Subject:From:Date:From;
	b=R9mnqvPZU7GNSel5EnljOWDD1NVDbnB4x5hIXpRh0WarkWxHHqcIvead/MGZWjLIG
	 aIMQQ6EImI7bp7t4qAuVrPH8aUgxlIiktw5ZPTm9QkJwBU/XUtrS3EPliNTQVdxlmh
	 7ltB1sNBYU9392PhJRcZKBIS2vyVIdeEeShPqraZutwhPbk8muEuhr69RzBTN6gYeF
	 w3IdWb8sRbRIht1mJZT2Hi/0APrJr9u/93CHtA1Ds0u0XA9t9xZW27UD07Q+6y5+Ib
	 qGA0hx3CNjoVfZ57+iGdc9nY7aWLt+vSr0TobN/BX+XXCvL1aPpErVAImIFUMnTIZI
	 HnI4Pje+IecXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B373C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408499359.15008.7504358645626438160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c01718799816f003fe2ae57d37b01b64c24055193d20142230a708642afe611
Date: Fri, 01 Aug 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754084993
