Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0237E1DF980
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772249094; cv=none; b=e2W5nQH7vhqALHZBZtB+ES0NcFwiy4HpvI11MW+Ry0DjsOhQLqEo80b+Fz0XR/Fyw7P7icsQjAqEditrVeM/jukAvKKttnubhkkOVci/p9hIvGRN8C05d6QKMs8dSqR4akn7g4s4zVfYVH0Qrp4M5+3KCUCORriG2JydZzmPZCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772249094; c=relaxed/simple;
	bh=B2NnC2J9YZ95UOIXtjWBuJdgjpwlcAikaN9Gao2u2Gs=;
	h=To:Subject:From:Message-Id:Date; b=LkrNU6GwU/3Lihw/Gf2LhfqKBIHjFoc66ItgMWFwlEwoeTZ6ftt31pKO/eYc+ChXSmHBG1TK2q3mLag8PHtoSBqYtixFIZPBoWpg5h1mYSvBnN2qZFi+YHMYRs2OtYReycJXrOfTpycN6E/Kg48FJAyqLUcOMwa5hw0YNDxRhEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSJe0q+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSJe0q+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A92B9C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772249093;
	bh=B2NnC2J9YZ95UOIXtjWBuJdgjpwlcAikaN9Gao2u2Gs=;
	h=To:Subject:From:Date:From;
	b=ZSJe0q+hee2jH5+cVoLTbdIj7b6NoxjgHYP0L0gQcRJ05MXLTZSY7UIu2McVmpzdB
	 xOIJPQDz4YoWAjx3OEVoRZo7VRL+PotGT3TJzUPR7d0fpEcsypUiEJyFx5kjyRjKKJ
	 +LYoc3RAxxwpleyzbrXztt6k8SWxUhzG5n2sFc6udi2wrlEY5bY18/roUH8jB3clET
	 XVtdyaf9+xvKnoAroi8PZDpgnHVNhhZfyBZunwYJgC1hpgA556sQ0PXTJW3YsQBtX0
	 q2sueRoJVSt4iKEjmbsdYa+6G7ur3fb3tlE7/R6V9qUl6EHoPTHP6JclkLji0ulEk0
	 h0Xh0ak+XQamA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9581CFEE4C0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224909358.4088.10271299180799899021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411e6d685185cf3e3a01a4fb0a67939967791b3f7303553053d857e01ebcdc44
Date: Sat, 28 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772249093
