Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B50C2C11F0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766619834; cv=none; b=E3HoKkFtfNcsMHS9D1jtuz0E7ojw4ln3AfIUuZIUnlJ0VaO5vWGBlSzNdTZ6gIwEmUpxqnZRURx72d1dsoTZCH36ErVEZ9bBsC/0ptyJlNbvR5Rau6yAbAUnd1/Q/pO+D2W3A+kV7dCvf8mYE8AyWdZ0sgD0+XjKyLQl3u0SXig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766619834; c=relaxed/simple;
	bh=OLdPmpFF6aVeZ0nSgCvFny+lowMGuye+tx7JMeMSl98=;
	h=To:Subject:From:Message-Id:Date; b=SwoUoMOH8eW0iwDLPZKBx7M/EiIDMWOK5/5sR4hRIut+exmycv8FbQdQktIk/eouBfsJgmZBMH2nrUGXjauFhfbS4cT7Ah0GmUU+spxAX6eW6EElFy6AqYYmzhVaHVzjcqTWxQGXhy2gto/f1CnRb7A3+7hJtePya9Zt23G3+l0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+k7V3lA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+k7V3lA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FBC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766619833;
	bh=OLdPmpFF6aVeZ0nSgCvFny+lowMGuye+tx7JMeMSl98=;
	h=To:Subject:From:Date:From;
	b=T+k7V3lAc1Mo4z36HUU4GZyCL5WrkAFMBSsJFQ/nNIWR6O02h3vf4guak8hgL4QjB
	 k8MkXz2UmPTH4Rf6d91WHBIx8f22EKejrrN09E8WsChRV3m7cHOGtOT4buCuiIrCus
	 9OE9X+/39M+UeUf4UtwBax74CdvuPM9RvC74RniNgcL2tplFUlUoNZ727J/Feer8E3
	 w0s7ADV2nzUCf6HH1LXaPo3WdKFVdzK1wiwCtMJYUQ9wQ6M7qzV4tq0FzRYtw4afv/
	 ZbF5BnTxPSdmNxZQujtLANM01p3mqvN2X2s8bQ6h/KxW9+t0QU92UTkZ9DuKkOBTxn
	 blfYhzAj/iQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD02E78498
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661983358.19767.11347403076954044457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc979362ba79ad23a11eac268bce6ad96f0c5779324251257d74654fec6f41d5
Date: Wed, 24 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766619833
