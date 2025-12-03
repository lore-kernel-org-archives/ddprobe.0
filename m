Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB71527586C
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764792773; cv=none; b=WiH8xA6SdKuPNofuGasK/m/b7f4n2nqUvtC/aFO+WtvkpRgG+h0SRn+5QFMSqtpsf+T3Fr9hzJAGljmvu7VE5OT6+707fufbOesJx9dDlCiJReJ3gRFvFxpN+Yz9QcLUqjKWNbzz6LBThpVCEvuh63d+v87v3uLHoCuL33ZfYAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764792773; c=relaxed/simple;
	bh=mw3Q2K4FcYBP/t49RXnvRAHq1Wvh0zuiT19j1zEZ/Uk=;
	h=To:Subject:From:Message-Id:Date; b=UvxVDVjGZ226Ls+n3zkpF5Ug0JW28bbOdPbp3kAAFmLoqlZhxpky+QDDh0IlwQmKf/mwka0wcAK7kOIFbn0XznDwSYTZrmjOCwTOXPO0PmHW5ObvxZrgvOnFkES4yBQXtLOedbcU3iZEweUJK9Wn79L+AENu7ua73/z3xTxGxFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wwugwd+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wwugwd+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7819C4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764792773;
	bh=mw3Q2K4FcYBP/t49RXnvRAHq1Wvh0zuiT19j1zEZ/Uk=;
	h=To:Subject:From:Date:From;
	b=Wwugwd+G9Ml/qAq8x9Ig+Q3ijj2COvu+ZfRU3Tq9/U/kiSBvRjLJq87vSE9BI0Ewd
	 KCWa7CCRYgGu4rUOy6snvlK4yjDqGE6TQ8k77qZpXcRNP4qX9+aXDRFsjrS2ThOzwr
	 ojrhg1SFWzVhKzQuT9TIfbH66sHE/Q/nnvJ2/t36OODvYdCFme670CNNVixNWBDKp5
	 YEq4ZHgqS1jmTCb0bm1YdiT+/4+BfwjiXxE0+SN11YNE+vkJFdzMO/qWKJAgs13DvX
	 Z4TdcCIQyQKmX/ckyP/1dLXuybq/DHcinV+282AlhAa60B88w1B7YDDRWHeiiyJWe7
	 0q50dwpssUmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931C7D1BDD9
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176479277359.921.12851281655780236096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 766a1e37480f8db10883308f6b9f392f606a48bd4f2616e30ef5174b9e73590b
Date: Wed, 03 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764792773
