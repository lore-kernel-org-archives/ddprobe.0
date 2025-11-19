Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392F2345CA5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763552514; cv=none; b=JbeTeoG1KqduINjTzinI7IbghFiahH6jdEPI/yHJNnqeDrnAUfqvAFWqask8ykxR7uXNzXOSgKEM3T/JLMDDZJL6WhoBK8luPAWPowP7EBs+Hwxs9/FMNNWhZaKRiDygGUA4vdfvKNBy0b5K4DTG7p+xvaGPCRe9w5asNswM1Yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763552514; c=relaxed/simple;
	bh=f2SRU0B//6KEIkEfe5Fl+aV1LgDsYF1lSEN6DpkntKY=;
	h=To:Subject:From:Message-Id:Date; b=AmX1otNYd4NBkqDld4cguwYmlLavTSEbUJyUgeKMcT0+nF/4SqoB0s+4y5MLFVKGKd2DPSY9mkWPyLNTIL1ax6vR4gTUKvHiwKWCf3nhj9WLDgxXcTVRG/Q8UGep7nAkPtV/WyU6px4oiFxUv0qQuS0YcRr2dMK8j3K/vrDbdrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p5IFSzr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p5IFSzr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91FCC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763552513;
	bh=f2SRU0B//6KEIkEfe5Fl+aV1LgDsYF1lSEN6DpkntKY=;
	h=To:Subject:From:Date:From;
	b=p5IFSzr1+t9p0Qj4LZttEVR+itxhpk4jn7NHJo/x1tdDZ4mAJwWcuEiDFBpUf46JE
	 NfBQZygXi6SljIM8bbChVPUjWPu1LTBJ+C2DRE9/0Yq0y42OBnjT8KOpcdZZaRzlyB
	 AALJd5xYwmas1OJR1CWVefLa54yl6RJQwoapfDURQmDhh5Y84ZRL5oOHTYd5GXrRuF
	 /G6sH7D80kH21EJpyT/L8OCGaAEraLN4e8z1KBJPVDTv6GSxBd9vUf/XtP+Wdaib/R
	 MpRhubl0S5mZODJ2mmmkjKyMe+leHd0FDYzMCULWdoR0u7Pou0B3vHqblJ6ADWtkwk
	 USWsg+nysA4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90948CF31AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 11:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355251358.26002.2929451913347037959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d42ad75da4eec092bd6ff3808412c0b5e13708a007257a71dff705dac8ac057
Date: Wed, 19 Nov 2025 11:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763552513
