Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEC816C857
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724841954; cv=none; b=MqlhFT/1zR6EUG0fA1AT1hKPvIfDIc5p/hmnLcOVa9vRebqC8K9pgS9jX/3Ih5QKELAohXgZSSklic46UXe0AXl+O1lYaGP4hWXVfT99TnEZMufplwxclg3OU2Na42aCDV8q7SyMy27CosmcXcfFTISp83gdL/9Y2g7kmH+5cWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724841954; c=relaxed/simple;
	bh=RpzvcCFF6WMqvSxmSIz+MoEYb/eHTpx107Cwbb8iEtY=;
	h=To:Subject:From:Message-Id:Date; b=hJEUgOiBBNgFMB4pvzsYFY05MfvAW4Dfziwm/mL817AAdA3tKg8tfbT1z5nSje20GsxqKNAhtb1iKbSdUuiow5wkn99vDgeGVdEWQZjePwNeBMpY3jcyq5lRlgT8aCBIkZTKUO3o+ExYQK+p8VT/C5eW0Qw60E8SqP3eQst26Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJBqEBi2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJBqEBi2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8909C98ECE
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724841953;
	bh=RpzvcCFF6WMqvSxmSIz+MoEYb/eHTpx107Cwbb8iEtY=;
	h=To:Subject:From:Date:From;
	b=UJBqEBi2Yjo1WYzJxn5wxGsP9NV4WsM5QuZqF1t4+5QDRmdy5wPoB941xOZYGJrOV
	 tY0xGIITPq5zToT8LiMHYDl4VUz/We6EGR9PrDCCe/8w5lp/UERCXtFbAFQMZFSfzO
	 sqObaizQI65dh9JOQTQ0mPMug6My7EUYVI50YZeaVDRGT9Q3+JOei93YTOIGBEMH7P
	 OgDbYzD6Fp+O3q3+b3XLTK6M1503j8t5AAIp4+EOMZTUcyVVWd/yXDNabhdy/kZifr
	 NV+nMwZHI/m5Ro8iUNj/EgWjP7BBSCZNU3+NB3wEmDeyAIClKf8qSDacjakygg8frv
	 HKuBjq4cNMkIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E85C54E71
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172484195359.13661.12934276991769011034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dad09cf86290891fa67ee5d54b30cfde41eae8aeb3e27ab382486dff0c8ec0dc
Date: Wed, 28 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724841953
