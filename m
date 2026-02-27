Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197F746AEEE
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772226894; cv=none; b=poWMPdvYNycZXjlvHlPNwy5NCElknGZicGskFzq+6HeZSHiHI8TUJb6BuNsY/MQD9+laaULXAFNSi0BIDiUIVyP4b875UupsftiGAXr+4k6KEiR4rr1+6hYF0r5rAvURcHSi6OPalQLQKKmPdGrJMdzGDSc39E+Hl1nxGs0SS4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772226894; c=relaxed/simple;
	bh=tYVGFsv2SurS+88jxT1HQtEVMvsOs1X1kU9IM4BksQ0=;
	h=To:Subject:From:Message-Id:Date; b=jEbSgsJhm/f9OdXJtyNLvS/8fomwkbOv+gXo6WFfNigLu1ydbNB3sIY5T2RYZzaUu1a1PCYESJ+8KeGjN80DlfeJRlEfqLUaXWKwLQSkml/FZ76LHbPyL15fiC6qY8X+xDqNmGha7qpOtVQQvwmzb8O28Ni7imoJfq5HAWnkVXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3kY4CEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3kY4CEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772226893;
	bh=tYVGFsv2SurS+88jxT1HQtEVMvsOs1X1kU9IM4BksQ0=;
	h=To:Subject:From:Date:From;
	b=o3kY4CEWlf8r2+WTCIxtPRcCpGmAWETVUUG9edky5DluI9iwjSj+vH3lBR0SZP+V9
	 2Ab3exybQdsdW0v3U9+58mLl3kbdNaFSnn7TMeA4mNW5CIFW/S3ymJNvhxGgGqvwB6
	 8B7/z4MeREDuCOfcjaSyA11t6rDALAzmX9NqFb76OMVLdGMVtINIjQ2l0O5MplDosX
	 WBltTx5ogUzQ6TBuQzfUlXw38fSeqEDcGPa9Aev/O5/7ZQ/za+U4/xZuLFURNuQmuI
	 hTa5McAguQ9qkhbPtNLb5qnEk0F6+XWvuBxfJ6pwqUzD27fVSiBkaGRtggjhQbTCKZ
	 Lmkq/rnRUIVyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982801039895
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177222689359.19982.182750350164757949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5386bebdab480029c00e51c63c9196a69609260cd5ec035c5a404ecc05366df2
Date: Fri, 27 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772226893
