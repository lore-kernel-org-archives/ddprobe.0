Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460651DED63
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782016594; cv=none; b=lT2dNoMr0ry5sn37pdaAyJDaTN/QG4uVREDlAmm3P3TJlULzk3tQnPtVI+4OCbIohg2OyNVCXNaHCIT+ANyw9LUI0xBiJ+zX1sUm/1UrM3uZ0T6WotCvQRJtynRstsOWO4AwvgXwZAjfq7QFN3uKzXDsm8/NBnQjHBaSGS64VvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782016594; c=relaxed/simple;
	bh=XpQABW0LIbHTaKBX9TbIhwWFdOxUk5ZtqdFA/IX0ZkQ=;
	h=To:Subject:From:Message-Id:Date; b=YO0Kh9Xss9qUGJm1Aa2oiwN9GBtDNTXd+Df1L5ExvWF6VbaTWygDeoz1MKow5ne1dsxONZlVijxWWTaJGhtbj/tqzd0ODCafIuFyz+hVhHNOz96JUHJnYCzGJowMCaKWT3wmc1g7rb83Uq20di46WC8310nrNZck/fjNS04QTLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlVHu+Le; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlVHu+Le"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DCDC2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782016593;
	bh=XpQABW0LIbHTaKBX9TbIhwWFdOxUk5ZtqdFA/IX0ZkQ=;
	h=To:Subject:From:Date:From;
	b=KlVHu+LeGaw1iUryk4Y9yP+ZxuhECYdvb6+D7m75uBxPa28rBuQSbZ6f/VV77oBx2
	 4zUhfDRWznp0XdEtHbUc/I06Mg+XGp7+JLxVBPktpbuRXPSamoVr37JqDC5iys9xIi
	 h6hB8wCuyxGDr/24XWDMlk4UXa4M4gDVI4va3BDtjNt7Y4dBuJs36LBrzl+kGxyY03
	 IWmYeiIFouJEPLhvUXpfq8v0v8Y+U4apQh/URK/Bop7pDt65yzse1mzDbMxHowML+L
	 Y0X7/LFyM5azojjbwEL4RBrQNCR17BkdtA59l1/TOLG6pPwuPxOCUWd1cmvXWrcGkI
	 4ew+DUq9HqrwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B091DCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178201659369.26832.17700571886212652154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b179f148bd1bdff9d968808af9da50e941f2fd967c8acb88203a13214835863e
Date: Sun, 21 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782016593
