Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A3FC8DF
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735388754; cv=none; b=tAdikq6guG3Img2VMjBmUb+9/dG0cHMMp4FMnwQTRDP6P8zm6Ooc0ItASABnErGeUy/eXLhb/8vFlQUy+T6UsLdQb5DRudZqz+wJQtNYDViCCO05UalVh6wLMNxuK0UHwsKkLJUWbY+9/6ZmZXRXO3NCPzSBjgW9y0wB84LJCsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735388754; c=relaxed/simple;
	bh=xKNVkHP5SEwp+kluZReSTJolJgf0NgxqUOgvbuskul4=;
	h=To:Subject:From:Message-Id:Date; b=LJxAl3GvOoN93lXyp+uACropI+XWdforsgM13fdxfHD7Ee/z2M/zY2yNUwAGyeyvWjGlMJFO/4paMxvRzUwPfS6j3VEJ/JmlK3mkw2tlfmTWISHx7aZNeqsAdTnUYjGMT834xw7ftY7xebkr+sy7i0c4/ZKk80XnL6OtZLyqii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KyVNuFVr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KyVNuFVr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4AC4C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735388753;
	bh=xKNVkHP5SEwp+kluZReSTJolJgf0NgxqUOgvbuskul4=;
	h=To:Subject:From:Date:From;
	b=KyVNuFVrG+YrqMvNeIAW2T7hq5Bb+yxQqWOBZCckuolZ0HEtG/kpLp5LuKrThrfvO
	 YxMu6PxuwumYdynx9xtszGNYnJANScCvPqWkyHm9awTWzPhVc8t8mYbbrAO90EhwL4
	 N0pe/368d5j9YdBsYbLxuKaOlk2t7E2sG0V1eLbte/WXNEMsdNzDpEABUfIJl1/RvT
	 eNKKdpFKR82y1of8MbbXP9zxz6v1LX/XC5qhxTsex0pUd9FcpMr1sZhosL9+kaSHl4
	 1rtFHqq9ABcmDpJJAcD0+SbHXbgskLSs3+FPMEO74tHrznaJd5vVsYHGcgCZDpPgng
	 guo6+fKx4JrXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FC00E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538875364.13929.18210119525748142448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8992e610c50967ab2577d0817b3da4376bc3060e37a6ccacd105de4d27b510c
Date: Sat, 28 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735388753
