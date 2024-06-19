Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A02143C4E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718801963; cv=none; b=chBhZLgJUbVt9mwbnHzgDsGD9yUL2rrBYq7e+Et6GelSq5H532ZVbZ/pK3MZQ4Z/0lhVCylWZh7lO1+1SfwPHkpAwo9kk9iiK5qS4onswxiV4l8pDo5l9+SxwbCko90RFraElpeoB6ZfV1ChG3BWsTKJpVwFXsOKhMay58TiACY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718801963; c=relaxed/simple;
	bh=zsTjczpi53Gu3Qo/0bT4sCR/3LXmxcOsUOzRL7Z2FYM=;
	h=To:Subject:From:Message-Id:Date; b=pDpYHCWr1qZ0z0r9UUHd/+eLqSSgSABz6X4SCoh9UytI7r3VQWUboGAu4FFterMokU/LbgXMh7sAlLWZsGjuKK9NYNhLYTM7HPpCe/34qSJQHg2UrwNrro8qAvaZDdrCCID7Yl/hgfIjqQj58Vr+C6E2KCHTzIuICeLm2NeLIzc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIg0Kfc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIg0Kfc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF99AC32786
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718801962;
	bh=zsTjczpi53Gu3Qo/0bT4sCR/3LXmxcOsUOzRL7Z2FYM=;
	h=To:Subject:From:Date:From;
	b=sIg0Kfc68hgagEtWt4vvyzJm6bcMghcIMdSj7pXIQIU4Y8jm+IHQrP67nEO5YbTqb
	 cI+0bM2GYb4GCwqAi8jOi1xldmTC+wDSgOE/gzTCQFBQ6/sdGOqY5jVUVKE8lUKeHQ
	 yQs7tg/0wkYwfxK1DsUvelbmibZrq0w3efpiwf+fYaEFKNh8DU3Y2lKn2VWcS0pIzt
	 aUlijC7Vkwy9tIAJHGGNmmXZ+vvePwqnDNnlUz7qs5xIfjzJifzKO90Qqb13wOoNjA
	 bk8XeN1Y35qfhSFYIxG4QZNHuZZkTpZhs7aWJPS5xXsbseeq/q7MpHCglgYidtssxm
	 2esi3BAYckUvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA54C2BA15
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 12:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171880196276.8252.16285414563474063935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75abc8d50c81568fd534f5512893a83eb302c6f3905a9b15c21bc42b653dd133
Date: Wed, 19 Jun 2024 12:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718801962
