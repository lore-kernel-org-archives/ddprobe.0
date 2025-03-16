Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D385376
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742092794; cv=none; b=BU0DYiVMTz5wS1tjy6nl4CL0H+xwmBvKAT65i0+hvUah/g+24dsef86A4SWMPcJ6Fkz2dtWVlFgTwoW8BV1pC9aSQ1aCKTeThMtcBuXF20se/gzajeMxBox9ZFPMnDMnf+yMNgpJbHROSPuLohy8nb2iu1k+JZSEgOfQR7/Pgw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742092794; c=relaxed/simple;
	bh=1kITufichPlrVbJSFq+V9K2yl6pxWMpGX2y08c8ipNk=;
	h=To:Subject:From:Message-Id:Date; b=gR3VINpwyUMEwTWYv7Qr42we4NGDK2mjB29WVxg2mNV+R/ThVp+BmKnYUJE5YNCfkRsdU+/x2zszf4owKRRbbqrQbLYjLgY1ZSLE0INKcyyvWheMIfpUPv0a9Q5TxhWQDRmzKkBvs9lKDdcWDHDd6ZizrXMrqMrpigXrd++gicg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/fCIVE4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/fCIVE4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C51C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742092793;
	bh=1kITufichPlrVbJSFq+V9K2yl6pxWMpGX2y08c8ipNk=;
	h=To:Subject:From:Date:From;
	b=s/fCIVE4LoT/l1IcIGqoxHk3/W02Y6hFxkyJ+mz0ZWzok2hM/EG8UwXUHqzsXgwmP
	 jwhbFKyWzIBCyLDt1ejEUsaZRcKyXTZ2e1i89M0IoJmPGqInjPFbfBPVCblwer1Ouj
	 4pwESoti4Al3VFg/DRUIIUPAwxyVnCq6HX/sW5rYTs/+tXO2GWQLKc+hx75Hjjp01f
	 bgu3J2oRaSh5/RI+cycnTVubcGT7y/kQthpZj6D9jc6nL32hJnnoAeupnlvtZMcRS1
	 FWRmOmpD0VSnBSOxRKJlMtKx/CcA7AGGgy9EC8KZr8cFB2eDRhZ0GAOGK76tNiPidi
	 D0iwm1bPe8JtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E77CC28B28
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174209279363.19246.13190478976212417955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8353afdafa530d6c6f0c4dc0d9a0d7b3c11ea268d4c8a584075e644c04a6954
Date: Sun, 16 Mar 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742092793
