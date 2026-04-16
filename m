Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E301248F72
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776382654; cv=none; b=Yqn4GKbFpMr7QV5GblSuI+Nh07/pEbZs29n+YojIGyRhYaV/JyTo15pk92bw2pNJgqVMwjFrd5R2NyAGlTd0GBf/IpgYBS5UrgY+JEj4yPo1xcllHe6ycW7yacvOIzczLnodKjYIOZLQrBiCIRGZaIdk2GFY82NL4KyXfRNYXTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776382654; c=relaxed/simple;
	bh=zxP/+rnZf+JFifn1ejghcctcSi5qDfoPFoMJHVrGmvs=;
	h=To:Subject:From:Message-Id:Date; b=m+llYQYp/tycY0cRVXLEgsq68Aaf0lnzsYeaY7fyWneKwrci3bjS+uSMXr/rypVk3+GXFlGdyNtAlD6m489IoNyxBJax8e3OJ6d8tnzRHU7RivVYRH0nGVcn6ty17LRsMjmGGmbwVLjv+5Qp0l/3JZdWYKFvvGiaJFbzRCAGMHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Przvw5da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Przvw5da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8649C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776382653;
	bh=zxP/+rnZf+JFifn1ejghcctcSi5qDfoPFoMJHVrGmvs=;
	h=To:Subject:From:Date:From;
	b=Przvw5daLo4FXSlRpMZnUZl9LhMh34Xz72LCVy9WEBfQIoBUQl/f8FU5rDKnaGKFa
	 cZUaHRk73B6vfz3OwXG2DCN2UC7kdL1kw1ViHIBQFxlPtfHkGqGOeJkpCP5zJ5DlgY
	 svkRdTWpvSxSf6M3X2cuUKKm7MEEVmpuK4L+tYM1hkx5AdSFvIJMTpTuB5cwdFsNxM
	 6HOsJy1siOQm2Vgrh6M/I/LwKo8QtpXhoMhOgTF5j80s5BOpT6lxewsR7GyuQ6L9KZ
	 1ACmXQSHhBNbMSYFscVPuL/isCFP6d/XtDJEL2j3DjPiSpWr5q69Yci1XmoDLevFEE
	 MvfkXhT7VjtZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6A4F8E486
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177638265368.16486.9295937034456121040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dee42ae32ee88d14010f4a80fdd30677bdba9f2c1224769aa6440a3f90a922
Date: Thu, 16 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776382653
