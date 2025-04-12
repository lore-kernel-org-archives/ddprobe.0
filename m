Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1E3207DFD
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744486796; cv=none; b=kpqgLlvloLItsQ2JcUl7K8qn0YnQMY0vi8/54hbvtVj+WXwzJRQDPmhF3ukOUh69ZDmAtuyOh1lz10p8hwk9GdlIUU2KNZmk1h9MNqkTT2Ozb+DN4+OjqWnmfNlClvdtnGKJPhkdfMstJKOSyPisNV+a7xm/1hgTHGuk7y06xM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744486796; c=relaxed/simple;
	bh=7COBwQFjCaQ+OXc/TE4N03kVUufKxqXvg9AAuFgtMhE=;
	h=To:Subject:From:Message-Id:Date; b=AKmGmkJtW5Quk8ll5AKUJdg8BEaOxCdVgHEPCW4uZFTQMI0fW6ES2kTQYEtIPaiMAmRlCEkTqwdOovUNxW4tPhGdpQz6Ge3/Ok2ZqG+2SaLaqs3t59H3K3B+iuJPfKjiIaDzKy4begkooJ8bAbv+8lOPD+n6rZcEHZX0jhYcgRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRwbIbH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mRwbIbH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9448C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744486793;
	bh=7COBwQFjCaQ+OXc/TE4N03kVUufKxqXvg9AAuFgtMhE=;
	h=To:Subject:From:Date:From;
	b=mRwbIbH7xwcVIngg0EPMJZZL5jJz3ZVYaQIjw+LxR4OgLsatrEQm81q7y84f9hIw4
	 ngmSnjTx0AE8g8s5ketl98ETdhuw0pNeGATtC8B4oC33HwVwF8TflDI/hT/q8to76y
	 bf5tkAdnanpKXlKz6ZhUiMQTAIXkU03yxOrgpejjWZTIFrWYidzDLU0LEXNb+RzySe
	 ff+PYOE1DFcJHmKz340LuQuhzwY4nzrK3iBOFxXF3fYLi/jdaXZOPokgYNP1sODbeG
	 jxnXJSbCfGelwjEC5+j2UG0+WLPWG/yVWVqkMxLxqS2BLgA48RYwZHeUJgPgobwjq2
	 pKi1uffhlvcfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1D8C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448679361.14110.5376341218675577743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92bcde2889aa289230f0a1904b5fd87e1a2597c8a65609507210b1586f666ec
Date: Sat, 12 Apr 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744486793
