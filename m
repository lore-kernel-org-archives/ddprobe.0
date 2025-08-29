Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3003F32145A
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756477794; cv=none; b=Kjej2d9AK7soj1MaclB4zgrervuVJMKm57yCtVjXLVCY9vX7DUQLf9e4F1OwK2OL+VbiK9xMF70GMmGtX4AFcTAYNcN46LVnfBF7j8beXiPbPYeaAAFzOJ/VQeFb185/DPgwRcO000QbPC5E0WSPD/8ryOcynp2fzJRAuR8/gWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756477794; c=relaxed/simple;
	bh=BMrT1tZhdFoP0D8/R0Hf6OBO7aY/knWgDzndMqnEJpk=;
	h=To:Subject:From:Message-Id:Date; b=PcadHi0ixMJUh9a7JW1RMfmvG8NnxUh4aavO1v4D0BV3lhBTdFprAod21aXCgaduwcpyc7wozLmzCcgW8y5AvZy0kGbhh3pIMd/Nyv+i23wySAYetfyty5On84LoLluMJzb3h/9S45363oF6YWSGm08PztFiSuyDImnpDWwuhYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EgtoEAbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EgtoEAbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3AA9C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756477793;
	bh=BMrT1tZhdFoP0D8/R0Hf6OBO7aY/knWgDzndMqnEJpk=;
	h=To:Subject:From:Date:From;
	b=EgtoEAbXkyVivDv4t335okCKJM/Vsb9/TF8xyCYyqCZK/DYdM/UfsGCCU5Qh39qfr
	 n6a4c9QbG57faqdRgAj1WSd1VaH4hmX5Ksd7nh51eMAREEQDHfPgGkWFfwhukk5lFB
	 TO3YV//j20YhzCGKlh4369YKLCRWoOit17pAHT1eiXA5ZGWIVi7qr32aVN7I6Zf9C/
	 hoU+2aTN5P21fxi4CxrVxcOelpns/SVMtJk0JStFLmYY0VXKjUpI+ujCbkZLM9SvE7
	 l6KlRYJ9tf2pz70bIEZZBCl7Q1cxnXjWSAkASHnTEoUREI8YOJzxkAAaVfnbSO4KFT
	 X7bmSJ7sCuTyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EA1CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647779358.28407.1494924273398244290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1742a82508d1773d1deb7fead8bf28490c973d63ae28c5f3ae674353711f5b23
Date: Fri, 29 Aug 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756477793
