Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 135D31B392B
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749610794; cv=none; b=C0nehmsDdVvG44syovIrFf4/eX6mXGrV5CCwowEQ6V738n6V8Z34zbuPXZCQ1gvqwsSOF3BKGwvwORcLmG9gGR8KDkFssqsrR6qwN6hoKSvsCUubUUR7n9vL+dQNZGEhGyngK5OB+L9tdm9LrkG3xLA3mhGEDQq5f8U+TwTARB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749610794; c=relaxed/simple;
	bh=upyzBozFJakYbfhZRKhLSN8KofEUAzmYmUCObK0HSwU=;
	h=To:Subject:From:Message-Id:Date; b=fMNjBBDK/DFyw173xc5soNr+HXtVOUXU9B9mSpVGxcGGw98K6KFlOgJxrrD0hqm4lz0ATBBc5AS4lz8luKBaddO1Hhthtaxl4PDWm/L8kB59LK4GZ1L3yqJtwV/WHOpH/+KJKTQFqZwMlyvZVtIzfKE0lCdElD2mSU/xQoLwMMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jyAb6RxH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jyAb6RxH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEA2C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749610793;
	bh=upyzBozFJakYbfhZRKhLSN8KofEUAzmYmUCObK0HSwU=;
	h=To:Subject:From:Date:From;
	b=jyAb6RxH/vOBSGWLE2ol8Bl+hgEV4gEZ0O48LrNvBVP6qllxbeChiIILe1enR+74F
	 8Ebw7/bNYyuXeKHqCg6pzPMFKi8Th3VyKT9soOB/Z0htNkLX8V/LWVEx7j8POumql7
	 yEavK4zr+eqNWm7n/W8WM8svEXws7DbJ+ivV7m/7HriYjbzl/RclqEjdN+LJeU/yii
	 HuC11C/eq41FSDlrU10zzY4YVXU6iuHNU/WXaiDXR2sWzn42k2S5e5TQv/bBIw0lAA
	 fhLW6J9Ctr4RRVzaboaPqnfRJCGJxqSGQh6YF8vJqhymC9V8aUwIkuWVQbNOmCGOWf
	 zhNlMK7prylEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F196C61DB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961079357.31482.3495060114894543130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 893e96cc989ca4fcfcb4e5f7116404b20c56e2d147785ae2874cde8678464391
Date: Wed, 11 Jun 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749610793
