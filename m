Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545EBE573
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735457754; cv=none; b=LZmt+U/TQI42TroA244dIDhrvPLyFFxYHaldLp7FUb/WXPR3Vp+a/wFAOjXhaqee7IQNTztyRSc/qtQolVPW26VnO3D5KZsZj8pWSbIX+Ymah8ey/pqJi2fs+xZlz1PfuW/i90YloMz5oNFstscQ1BkmBWmjSXaXF6d/nhHrO8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735457754; c=relaxed/simple;
	bh=/3nWIZVYyfWnjySUFvIGtPFUKSGQxSphHJi+7BIab3U=;
	h=To:Subject:From:Message-Id:Date; b=IWzmOl142MotZBY1iVHEUZzbjaA6sPVpDr+p5PEoG5nFI6+54NZRMi8cfiWf9/dC11dL2aW88OLJRQ9rYfCLUeSHbxyTGJooA3WzrDQReomYDwi2Hpj34+HHIgbycydIA5a/ZhXbgX2yAJdTmgq1iEQo+W6AjW/7jPnlcEsf70s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAXXwoz/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAXXwoz/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1183C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735457753;
	bh=/3nWIZVYyfWnjySUFvIGtPFUKSGQxSphHJi+7BIab3U=;
	h=To:Subject:From:Date:From;
	b=rAXXwoz/jW4SRdCLODsUZR+E4qiK1tTyod+4DGrjc1GmB8H74Iv+XhewBKYO33/bE
	 YZNuoEUoVnSwSHq2lRiKC9ZTX2HgOYEUe8YjvZeAljgYyOY2SnIEt2wg9xlqhDUTcD
	 9UMWSmpsXtIjQAgCWt2rPWYgR4eiS+4adSTICnoaUWVSxcC8g8Qf3iTM8QJyPjYygL
	 JxqDwsqqpWb5+LwwwKn8xWDnPrXAF4bVu6G58NhsiXyg2rhiVVAZB2eVxVwgdREO/b
	 yZxedccezqZ3Qk7puCvaPmw7V2v5k0tG47X7GgkEHTncMy1BiQbEP7O4znu0EWom/h
	 MvY+8ahrNNcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FACE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173545775359.9389.10187315733370995907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 824971169226a61bd46fdea6d679099cda1a08f5bac2113ad547e2e71d862bd8
Date: Sun, 29 Dec 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735457753
