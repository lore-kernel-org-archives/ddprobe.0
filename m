Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1495A8405C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771943694; cv=none; b=uwi49ZIE2W9ZBaj6YLrRMu4HU2/IT4ubXdtn8rCDZZLvXjdQeksFpRSnPWks3qM9kSt0GFVsTHCsnTmUK+CVvtXZ3GaXP8ghuTPkHBtkcHfGMY7mU0p4PiiZdkKOmbMDuD1grzhGOogXrvVA7TKjeNchSXn2SeLX9Y7gSCIf19I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771943694; c=relaxed/simple;
	bh=D2Rfshf4xPgiNS98GDQ41GKTAaXwVIQBTQJW1tjgkT8=;
	h=To:Subject:From:Message-Id:Date; b=h449eM3RmECSeSdK/QXVA4SditCkBsRZKnwPaBIs6cnRatc59/0ej948WHb5cQkxGOuO0wK/sCZNrjsy8b1dAGK5G7EiK8AxAOS6GOAXam6LNNl+V3JJm9fNWmQe4BKOZuxPbe1XGI2Yozlx+bH9q0FKvf0ZyvWgYxEQDvhwwIQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/3qAUWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/3qAUWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A97C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771943693;
	bh=D2Rfshf4xPgiNS98GDQ41GKTAaXwVIQBTQJW1tjgkT8=;
	h=To:Subject:From:Date:From;
	b=Q/3qAUWDzCNQHRZOt7gsQ3l6TUNcbCHIBzmr2HWjHMD/C94ayn76bfbpP77QGp1aM
	 49ol09OywxlZEzF98H9FTuNr/f4sNTKs5uHfzT3JJHkLxugdwxSrPKHuzveyqZNo96
	 AaAK+M95ZRIrUfjLs8N1JtjGw0Mfst3UFNeJ73ovVYXxa5Sl3PfPauV97tW5YVPW+M
	 2ZkdZYV467q6LkYNNts3z4CAppMHrxlHiGxeKdHvZ/+dpRXMZCGWtW+c5xihmXIQ3d
	 Aci0UHFeQjBPnRV+TbhISppf5VRyvDp5TFUmMN44WgiKpPEMnLej1764vbkzDpnk9y
	 UJ6klTIWKu8Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9241DF3C982
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177194369358.29430.9595321376681607531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0cd3844324d7231cede1c573e6db60cb09f564041c5d2da7d0185fb9e78caf
Date: Tue, 24 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771943693
