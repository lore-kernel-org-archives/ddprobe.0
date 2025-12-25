Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BB54C98
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766633634; cv=none; b=BxgNsxPUPe7Xl3GAJe3RS0dUmk89GQlHZKN+fdw4B1HeTpP0cT1IbnUWlYbO7tWUDtOj9oohTpyOfgzTG5wTPMslIYatwOiH3fRQLs5cwmjYCoLy7L0am7oTjERfhRkgL45VUg13DoK5/pRuDhuDk7W/YD5Ar2lq7gfgxq6pm6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766633634; c=relaxed/simple;
	bh=FbfhzaM05uKl5v5zS/f+220eYbEqCjq6qJNcbFbEOa4=;
	h=To:Subject:From:Message-Id:Date; b=itpuRhrg9on1nXDXkUgLMieHnUftENE6Y3fuvg1lMBwfeZhgxYUewX9kctiAS1ecMx9mjbrhZj+6VuVAIH+bTX/jKQUqtzzEW6J/jtoGLmVszVVkQ5uYd58pzVIs/Nioj/BwILsr5kEc3odnAMBr+TE7E0ijSHwurxTOlW09aKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pNbMEyOo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pNbMEyOo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5F2EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766633633;
	bh=FbfhzaM05uKl5v5zS/f+220eYbEqCjq6qJNcbFbEOa4=;
	h=To:Subject:From:Date:From;
	b=pNbMEyOo2b2Hh9S9jAp/t1Dy0oggk9o+8FlP6ByqYjccE4dM2w//xeKG4G/vYtCCG
	 BN4+Ia5lz32nfxRACHyBguSmuo+4lTzcqqRk3xSYg+p3pVOVhW1SU2EHwwB2NYh1Vc
	 Siv3ZkCH2dfDWTop5YjkRDSSFgL+jaWViJQXkTQKPuSV2ONzddjPsekF1/oRio56SG
	 KPMLBWoVGYNbKrI/56XJox/Y4RObAEzAPE6BZbbP5/PE8IObJV2vxp1Lsrgl7Yqcv/
	 VYPprwLQsRe9Hot276U2BpcrHedm/CHBWEDhGvrbeOBX3VQFCtZXPK8/qBDDXDg5Oz
	 uIUjuZ9KgO3Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2BD68BD5
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176663363358.19278.16666868164963198647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc361883b31edbc559a4c81892a3ab1cabd4790436c1cc22627b6c8471cf3387
Date: Thu, 25 Dec 2025 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766633633
