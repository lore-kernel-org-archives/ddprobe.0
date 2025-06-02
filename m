Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4C2229B12
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748875794; cv=none; b=fU18as5ihbj3R9me3zQ9mEkF1Cblo/fMzsoNHAEAntRb6F1nVBlxShFUWF4EBAlP4U4DX4EhA8MD9U/Eqh7dEawlS+te6s2EY+MRKpqo6ggjt53UbHz+KCGRulfz3R32nKcQmaOhDzrcr7XTN2+A8hs+U0xCUxjStXJbhr2qSok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748875794; c=relaxed/simple;
	bh=uxxzBwTnzcv4pSUpdOY5z7QaTJKnNUQeF+6mviqtY3Q=;
	h=To:Subject:From:Message-Id:Date; b=dOLL9akVHQDnuMggXgw87KdBR6B9V91XxrApdFjXTKIAB0QUUlpsrGlOS25fclqDwgPaitjItFG9MEV5dRR4OfVFm8dvRsES7kLgCfsirzf8Vf0JQlRb86rmaYlX/u09W6gSOOy5PE/0giCj8GvJq/1o8TDnA9JZAWmOb49yTqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMMVXhbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMMVXhbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DBBC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748875793;
	bh=uxxzBwTnzcv4pSUpdOY5z7QaTJKnNUQeF+6mviqtY3Q=;
	h=To:Subject:From:Date:From;
	b=QMMVXhbPsOZnOXBx5gMvzgIyKaITljYkkp2h2UaYVN2U0Xv0GeWB+P8LxmCruFUc/
	 6CwJhe/etdHhY4bWcDoZ+RAAzBHHY4423wVAcOS7vCcIFDngbcBKelEqqGy4tEvnZR
	 Ig9N4s8tKdTE9Xi/5eqhiIH7lwtZK5gZPN7sZVjdWrVcyV6hmdcJcEE00UT+VXRO+N
	 pXaiFj+yKvIuMe74VN/lrdQjpqRMkbNOfi/Zli6loBh2EpgMd2ABRFg+n4b7UcSaxI
	 MzIXPjUxa0W33HqDO8tuEbOLSebRhAfGKQu26SDcYPykMSAasRqoA/E8PTsu8WZ/0Q
	 F2Od5ME9f7pqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9982BC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174887579361.9160.11847333654639409342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9524ee6b739f7f927893a5a6f061a6e0211f8162e40dadb6f9097e452722b4e
Date: Mon, 02 Jun 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748875793
