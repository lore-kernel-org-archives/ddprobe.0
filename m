Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8AF2D2385
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778906434; cv=none; b=ceYdpQcryKHh4AUWdK+2sMktXCQzW/k/IqMQyhBYW5L5/TEMtsI9yScIe3tBa4nweohYWzvQCs18NTvIqQYzmFzlazNv0feGgTfTLB7l/DZL9/L77u5+zq/Efh2E5UEu89IE0IIgbS6zA6IqGz35Z5MzSRhffrHwGAKaE3Mzgdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778906434; c=relaxed/simple;
	bh=yDOKFMWMOxqSoLKHO/QFAWMmDVwBTer3DRk4c30Brr4=;
	h=To:Subject:From:Message-Id:Date; b=FcI0AIN/jQa/WzwUgzZDq+PzApO2lRbJpHFcWheP58TD9QYyWRG82aVhoEv+lXStBdo0uxP8iLpNbLx4gWAiMoHAbo7Ui7Kjg5j0/DR/1iyNsMVGgjrhASbZkEJGONp6v61piO5XqmnM7N3vIKGCC7aEGrTfKIWkG/xbxe9Jb94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4eqnPNO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4eqnPNO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2996C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778906433;
	bh=yDOKFMWMOxqSoLKHO/QFAWMmDVwBTer3DRk4c30Brr4=;
	h=To:Subject:From:Date:From;
	b=I4eqnPNOzSaDct8b2BC3uoOwv5hVqTivr2wWuToKTM89H/34ICA7yHYpTV3XZbKFU
	 T+wOz4574uA5QppTJWapFfSll2r4fuYICJFkxqVvtXvJi8Pe4TOxS8XJKqsvSdGxKP
	 iG13mL8Z91HR3ShBmLYuL9wNgepFiJjRsa2bwXSKASXgGeCdcJTtAzy5G/qiMIGBBB
	 llZcMZbhaPBC/8wQEMsnKzqWqZuQi9JlEuzZtnXUVI9TU4Rrld8jrLyRWl8JUtdYZx
	 zNly5x+uVMn9D1E6/Mtc35Q0T/keaT4Ax5nkSk9/IiFvncReueJa0Zq3Jgp95pPvNL
	 U2D1CdeB1X/PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5BDCD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177890643378.18341.3151593686910021761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7abaaf642812a5202e01e85d3bc11a042fa97deae379df37a42746d778ee950
Date: Sat, 16 May 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778906433
