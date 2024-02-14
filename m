Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B045C85945
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707934696; cv=none; b=QAyV7EGl/ykIZq8MARMKWQmS6DYRLLhKovZ5gUtnd6y4Ofwdk1KGK/3QthupYA0Mwd9zMptrCkdILWbxClKK+lY2E+Uql+FouvUdBrK45ZBSme9Sn/2dxl7qHxSs7B3+jRXoQXxYQiH7SWxHZ8Orpkggtl2ziWAJxzwS1gXh7lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707934696; c=relaxed/simple;
	bh=MXEIB7+9WDhB6npEGE4Y/vNUN5vrDLlqSiPLKM8EffQ=;
	h=To:Subject:From:Message-Id:Date; b=S2tvcdEvYPIa//CjmcvhfbeqmoqRFLCmun31TZkNncrNIR8seYyHO928oE0M9PXLnI8DquxLYAY5CzYOCtxdm7TfA1bhP2AcliwAl9M0ios9+Isd/uu4bWvSP08npYCN/hGrmZaJqxmGUOAQ8dNC2UjSHoAXvoNUoZRyA9zL2D8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg5bktoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg5bktoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CEF6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707934696;
	bh=MXEIB7+9WDhB6npEGE4Y/vNUN5vrDLlqSiPLKM8EffQ=;
	h=To:Subject:From:Date:From;
	b=Lg5bktoUiZ/eyga7lF+hUJHo6981WyIzq+GcYw6aHHwZYZ6KvAaARduOCC9ToQ1uC
	 BrgREcJbpu6al1YR+F78v1uxDb+s2NVAIIKeCx+sIpQEiJDTMecnr4oXpYlVVJgygT
	 uQcUhyLWyZ77B45hVsnOfLtjnlJn0cN/2k7M24Aq3OfURPyYiD+d2XhvgY2k1O7kM/
	 xsoil4VdaqJZZ+vA9m0L92bLtgRF/meDLjkdNuxqk2lUn6Pdml+GF0BDg9jzC0G5vV
	 l/k+2j2OLGXxW6YZyobcSKeh2VWyvXDTtybELJE8vKtIOTtD/txj+iyRsw9IeCd8fY
	 keqPkOTOzCstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2ABC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170793469637.28751.1613940723737699600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259d1b0e87a7687163e192b6a21ebecc4ed55e5ad7ee1ba82cab738e1514af7b
Date: Wed, 14 Feb 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707934696
