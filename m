Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F11C10F4
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714609943; cv=none; b=Umwcce/SJ5kDuXX5cQU/8XwZVUhu1TYGjzwZHvsRphTVjtwJBnpW89S7QmSB7Uaw7ec3W5QmAf78GbSJepU3HPMpYy2Mq4LvmA6iZvgL/c7Osm2WRyEPFCl7PCXWn0PCngluUU1cW7HTseE4KGsTpjJF7e2TxD93UIwkKrCOMtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714609943; c=relaxed/simple;
	bh=CkQ5DTi1bYqxO8+WDrDfF63wgVFxiU6MeChQUKxrEK0=;
	h=To:Subject:From:Message-Id:Date; b=Nwka2j6aDpbH91jyr5qGfL/p7vjAqLbMRFa9hQ4CVCUuoucGEaKFk6jW2XJLqb/EVBQ2yP1P0H0XssqoTfhF8sy90athOWbptv4sufByfrI+Fo3r9I/jvIvLN9y8aY5Po0j4l5xOCP7pH8nIDLoJAtAv3Qg5T8VRKxjk8MUhAcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY3yPIWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY3yPIWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92A5C072AA
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714609942;
	bh=CkQ5DTi1bYqxO8+WDrDfF63wgVFxiU6MeChQUKxrEK0=;
	h=To:Subject:From:Date:From;
	b=sY3yPIWOA1VZ7M7BVCKOvzwXtW8BEZ4XuVg5VWMIM3j1PTKr8VdVuuQsDu9xBViQw
	 F2seCA23qmc4N5KHK85UHVXyD2R5ZoO9zTfTmG+XG7hNhGFHuVQidEAbel/UvqlGaA
	 sATG90tdLarbXYN4E+yLaO14Wa8PT+qXjtME46jBrG8ne/YNVIHqGRipUc3vkpSpEP
	 Ex6iMOsqDbpikKXULyxMkdqTRu5JHd+RbPW+M7eDv+KHCXW/kevw4LxLkkhoLQp1Ev
	 iPdMMVM3IJzYkh+YN4KsBi7L1z1UGqiXx+ECVEiQDj4LCDz2nqvTif27efJQ8uiCwz
	 HenEML5g5qDlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08E4C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460994278.30098.6718648085898939615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1779673129f4e6991680c2723fe17d37f9531f4381a5e7ed6a5eccd09c194d0
Date: Thu, 02 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714609942
