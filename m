Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E895210FB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748530794; cv=none; b=eTA+llCaZxP6OUNXVhNbaKx5negtex03NWmCmxic77yKy6tIUhW01rm7KFCulTox2GAC2V1gkpmkcAlQ+p4p1CyDPAmnETvETzhGQkgf6Q7oIcHriX2GbqDexRB3kzAUSQvYBvX/mDqg+/5EO/u9ygrw6rGwrYVpHbgoHpG+bkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748530794; c=relaxed/simple;
	bh=SlrW5aRlfTHQOWWbgVMqom1CQ5hf0iRIDYW0+8N2mG4=;
	h=To:Subject:From:Message-Id:Date; b=rbh5lUQ19EjrM/Y/rzmeHRVkWx0ggNgYeQU9MwhrPVTsAHbZpBQJyDrh4TINHxNHMpP3KdGd+wdpIyGsdGyG42DtOcPna4QfTYh41qjqNWxC+PVvOhCvOzZnLvuahUBof9EIyGyKebmEc05uGgvfBYKh+HcE9f8JODJ076rCmU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OIQhZ4Vl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OIQhZ4Vl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18CBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748530793;
	bh=SlrW5aRlfTHQOWWbgVMqom1CQ5hf0iRIDYW0+8N2mG4=;
	h=To:Subject:From:Date:From;
	b=OIQhZ4Vl62N0Ok7roTTIYlzTPLu/lp/7RnTtBp+3euF5FRWwsi7jgC38ORTuCQkZg
	 vLaivrlVP/dlhwCQgO/1ZHEUoaczGEBUeaZZXZTf+BzPLo7pF8YOtFHeoPvWY62j3C
	 7NgKVXE6PpklxW5GnnW99sk/1+Ke1KV3FtdlvhgxvE1SURGBnOJqhV2/ZuagfF7JLL
	 VUKfyHl0BjBgOhC9mHkw6AYl2lHUHk9UoLteYTriPRkW+9y1Voiy4HQd9EpHC9P0n6
	 MVQ2J73S+VvAQSsUfQ5lGu77YP8lHOkhEShVgIiNbhyQPu2BHm0i1Eyn8jiJyKHbTk
	 ofTfqWOOlQeBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEBFC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174853079357.9160.8416011764404796859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b935308c0b436b71d86e440b602d637d178b4d1a552b9bf936512ec6e7857f1
Date: Thu, 29 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748530793
