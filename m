Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FEC19C556
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776986854; cv=none; b=cZ3wHUk85Hbk5lZ7/WRZLvq5RH0St1YR1zsHQs5AJzFarORDvVcyoIA10cbZ7WZpRP+fxs5jDRzwwqbdF1uGaWPcTjEPW1+cOibZA0WJJkk4ddincqVA/94iiVUooFoXLgqiN/klkRjMpd6NwBuF8whN+BRtcYFDUnRu+7mgdLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776986854; c=relaxed/simple;
	bh=3VkYdkjzBc+b3a/7s2zeAIKuZrDVfWB/xXlFkrBlJKQ=;
	h=To:Subject:From:Message-Id:Date; b=aku/AYaxdXnSxSC9lw7RHsmSLy207aow8zfSGKv6GPqxMTT4xvcXzhgPLBSVacVNtORtW+eVrAeAMeNyamDN6DDBMbpXtLvDMcIN3J6dbs/NeF6Bd2QB4ATo/F3y/7MezV3w4HU9kmF6I/CnwGyLpHB3l0iwVWotw3KMUaqDU2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P87Nqpcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P87Nqpcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B51C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776986853;
	bh=3VkYdkjzBc+b3a/7s2zeAIKuZrDVfWB/xXlFkrBlJKQ=;
	h=To:Subject:From:Date:From;
	b=P87Nqpclzog65gJ9P6UwutsAxNRoCyTXSpyU1QE0kszaqfsySxqz/eK11V9qiN39x
	 BLCR72WQMx+CrjwugAnMywcuzFxHyyHb9AfG/h4JtjTn7K3PeZqC9h1cAuJbIFredm
	 mAo/OOX5Imqud2OGUaLauuEca9YRN2LjLd4pQRiilKyg84UIwIEoG+9InM+pz6HcC6
	 OESj8tB3ZC718D0IRV5aIIfODlSdNbsGMiP+m0PZYnrCZJK0wi7KPMcH6CYX43dOfh
	 BMxXFVINpOs/bQvngEJ6+XHMGVz/8B32jYoMgIv8KTulV+7aHjGvmgzSpkDDMYkHT6
	 TyERDYbK82edg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6D7FDEE28
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698685368.1375.14268705409705989752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d65e2335d829dfef9e148f4c55a50c1c2e5d8f3acd6dd03b7c611580b085e6e1
Date: Thu, 23 Apr 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776986853
