Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BD92E403
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754792394; cv=none; b=mx4xT6IqIaUOjsFfKGo9t/KFIeCJouEbhvG+BZnoiO3pVjbJCaP01fo3gSrFyEnlKugi8MT4uQpWStB1ud8DYZUzQZ6Rk6czo7fr2PVF3K2/rJ4x6O87oGngX/cT3+Lp1ynv3yNfyBLeW4YKfpMOC81p7ElnrAsu/j7zwoBsAdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754792394; c=relaxed/simple;
	bh=wBIhM38ZaiS1D+0fqoYEp/PwLVO06hzSdLSZPKa3pSU=;
	h=To:Subject:From:Message-Id:Date; b=ur+15JMoPpaHgBl4EHgJkuECZZYATyFY1HjPh0yHE4yodNorwzkFqKJbHmvOo4VdCdQm29sdOOL/hVtv2JZh1suWAnqp+DleJjeND/SxCF/Icfqi5GxVCf33pKzYhZ5QZbf8F2hpvdb+SFBe85+LckOc2iOx0SLcTpESn5em6Io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlif4X9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlif4X9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E62BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754792393;
	bh=wBIhM38ZaiS1D+0fqoYEp/PwLVO06hzSdLSZPKa3pSU=;
	h=To:Subject:From:Date:From;
	b=tlif4X9ZapYAEuwHeqKOLuiwbKL21npPU+0IYMTUfKMhlrVMRx1emTOAZkPBBGgMZ
	 vazpxSgq5aYRqead+6u+MXjMYhBF9EybjKmtoh46AUdgIYzhozU/7f3ULKYCcDi9j/
	 5LeMC9Io3E/UmGd4yDewBGP0cy8h+dGVETdkOAEhca3mB8uwAJRAsSt/LGjFFLqofC
	 SVzjb+zLhSO8eRBY2rvkBkUTkWSxPkww65o47bfqtx4DSLLhF43gTeoHp9rW1BwKxu
	 jFC2GPqqXtqwlEAQdCPlylD4ELYUsp8dvfEVsmNfCG184Ep4mXen2DxDq0pnk5hNV/
	 yktw8gJuns5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F44DC87FCB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479239357.24198.10658285158438407054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cb4b64c0fac1dc1c01c609fec0518ade26afee5dd3e7bcbd0893db5983eae0
Date: Sun, 10 Aug 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754792393
