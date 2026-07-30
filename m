Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BE43D45C1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785400834; cv=none; b=JBnNminnX3q5SjKR+zxuxvu5EyLrHO+osaMec0NYhKlLl/75+N5PvvgeP3HdeX9CY6vd22tfr0R9A/u1C589m/5CCnPMwxjiVnqgcQ8EhWMBg8jmb5JlTABdMMkxIFrZcOcAU5KHSlxw3JcyIktCVOGcjQPf+jk4SfwNXkLB2aE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785400834; c=relaxed/simple;
	bh=6tTZyMsTbYCkY5ifUC09wl91LtBH9a4QrKe/Jmq4az4=;
	h=To:Subject:From:Message-Id:Date; b=NJ78DL5oo6U6Z39L2hl2LLjT4dbRML+R1NSJzW+uBkqCnhQSjbUgfAZah6wcYDpEPkiLe2VJTQfi5MHxBiltcNOmRfU+6BW/n1/2hHWhvD99A0HNaaTpLPzZHbOEnr260G8tRlBpm5wsd48bGhdLvTcqc+0TyCl8KN6K05Ad+HI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+IK9wrz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+IK9wrz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD63C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785400833;
	bh=6tTZyMsTbYCkY5ifUC09wl91LtBH9a4QrKe/Jmq4az4=;
	h=To:Subject:From:Date:From;
	b=C+IK9wrzoSJm8mbQyj7GsPHpb/Pq8aJAaPMgULLVNYz21OYA5tYAI7U8ra/6swz8f
	 fD5hZ2llc/hljiQ5Hw+WK2O/UY0+c1m2T7CdZC70NNv3oTfh8+WvAoaTMS+CbFmNN2
	 koSjxsjIZpU6vH8lWGDrUpW0Ko7XKdeVokxvCsKW/VyakVnsxboF5smuGn2UAvbtTJ
	 BaBsH+iwb9IFj1+IKOwcSHqvCBurRznaIVu65/rmmYcX/r9l9g9aVKSiCDEGTyu5bJ
	 5C63OWnEExD2V9FEYZONh9wZrzKOM8Asqgh27vgKEptzb1Q5D9usLtMVsqN4O7NKWX
	 wxwUEfVgSqZPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9662C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178540083368.1144.16770407133149383733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4051a26cef69da801cef8f1d4f72e56a7d3b4370b9b3d8f4e375cbe56cf1a65a
Date: Thu, 30 Jul 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785400833
