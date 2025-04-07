Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43265227EB1
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744012794; cv=none; b=sl9A+ie4qWiKEAIZPg4rINvaEmZTdDbALwcXlQ7reRrxKlA4F/Xq1kvJrT0U8wFmYJBEbhPWN4Mn4QdaGX8j6ev1pvCAWQ6wdw3QAvad+OvlA9xOp0AbyyZD7WAbFISzhIbHZTIDBXKEZsk4cylfjcuteer+mBl1Hq3WUTSSsaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744012794; c=relaxed/simple;
	bh=GG6xa8Z9i+1QwuhkEtHcAEj2xqTHb1uf2R/B0syIU28=;
	h=To:Subject:From:Message-Id:Date; b=a7r6P+7Yoa2rAOCmHGXZ9xeEI/Xyq50fxl+hb1MaHBxoYiyLFlT4yDinOuk7ovYdOUkq1qfxHDsMvGNAdiFbxTWOcnHgukMe3wfM/UJz9e7CebRpxzWD6R3ko/6QHl9ZIb7Uu1sFcLV+DeQCDaoxooOJLfaI6+xc+ipQKEgpo3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEh+7bFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEh+7bFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD84FC4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744012793;
	bh=GG6xa8Z9i+1QwuhkEtHcAEj2xqTHb1uf2R/B0syIU28=;
	h=To:Subject:From:Date:From;
	b=ZEh+7bFw9YQybdLbbOcDH+vTH6Ya1BGmSk//TaA+Ct3EzNJdljbYWirQQ+fcUmWZo
	 Ruz8BwoVV5hnyu7Scuxdo8sRShQyuHqzAhceFM1tjJ9C2p4fjs38F0aWe+koFkAyXP
	 uFzdazInEnENW9tjTJIBCbX2jWNZNu3S1q2trSecAsOdkxFEcAkpI0kQKdFwPm0WDk
	 NlvAdWVyyuSoP12GAwICAbUL52ZvAvHecjymSI6tyCotjgtG1YJVQ+8cwcW5OmIJuK
	 o67jM8slI44xgjALKpFsoAJ3oTO1Dinkrviob4sRU/61xdWU6g5bMFU+sKegmBUMOG
	 1xh7V32OLO1sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D45C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174401279362.29686.5530482387567890899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa4bdcd4eba53c80f1a7a6c7c09ca36c4f8f6a2fd9af90d1e979af1806a628a1
Date: Mon, 07 Apr 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744012793
