Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0233318787A
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774706694; cv=none; b=Qlloa+VKVe9CpoO4oaRDLWsNeXF2ducH+deRutq97bQq9D8JSBR3gyLW7A6qoigtieEYInR1Nz7qvbux7zmXlTyjiFbgstr7iWFqrt3CKTLrQCzBhOewxeKTa8SP/V/7HkPpMjl+ec7JTLMtlr7R1LXQwiPoUtGYzJD7JKJoKT0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774706694; c=relaxed/simple;
	bh=5dw+bcx8gLm1bv+cxvYmcIpHdyp4aF/HyCMaXDVTbe0=;
	h=To:Subject:From:Message-Id:Date; b=rECxnEPEjeaP2U2MdcJp/IbtDJEKZ7EWEakogJ+5qNASByQvQouXR7txTWktYGRjCysCZKz2CcqwcDXu3JlwxZr7q9SvUWKNA47C2k+AEEhRvhkM+3b8PApmdVxaiERl442tHMS+Za80gOIIjRQqCxZWYsZKr4faBWA9TXI7GOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+s4PfeB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+s4PfeB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B4FC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774706693;
	bh=5dw+bcx8gLm1bv+cxvYmcIpHdyp4aF/HyCMaXDVTbe0=;
	h=To:Subject:From:Date:From;
	b=C+s4PfeBejPmISmf+oxwqBaAHH6BDoD+wPJcp3Z7BzEHv4Kk82hRHvE6Z9Sgsvi06
	 e4Z+IN34c5jYe54jNBMSgbt2lJ4L54g20y4i7lEo/2diOLlrQWiBBE7QzItsb/3RsZ
	 +bk1o6Iw+KS64Wn6x//IF3vWkTGfVv4sqRVd//Awt70plKbdqPFo4VBSL0u03eaDBS
	 rCuBpHyp+Z+HxWrFtRuDvh26V+WD9YrssKb7s3nikLLpO7CI+7y69iAHuYUZ7ORPIY
	 6/Le7JQSdaWxD1waml2IAXenO6n2yMg0M1+plTaRRDIiTNoB/VT42sbhV8f9g9LDKz
	 REbMmNcTqZVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901F510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470669358.5567.16082068560137394141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bb377e93575a282ee5eb1638d0fc7684be9a8c43166c73abad605c0d7745d2e
Date: Sat, 28 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774706693
