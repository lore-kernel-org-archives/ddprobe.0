Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B391D2785
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734426353; cv=none; b=K2VdQnIMwYbZyA4bJfWjG29CgijGlgLpBTKsPW7FdiXtdC2nteYkOqfKVJ35PHh+N7sF+xelkmLJK3Xp4vHIRzkcjiEgDby3FmyJ+G+jps3dRcaJ7V71SyW9oEpCy2FvwgvCN6LkrA0ZFmb1Hi3seEd9umcgn5c4zcZiInc+0jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734426353; c=relaxed/simple;
	bh=X1U6pqmmoC0RIH9HkceLr6y/HY6+2T4XBiVOC3gu1w4=;
	h=To:Subject:From:Message-Id:Date; b=RkKh2IIfZwDuI1R4EXBWzYZdzdxfY4yLfk4Y6yr2x5u+t6lEFXJRpPK/V0LEQk0exGz9Bcf4Y+PQ78fo+oI+uToJcyTSXJLQane8hX0Eahi7aIw7FAlyxSkPuUhNlD4QFJezfAY9Ccq+QxJUECNPnlhcZZ8VpRRmMuqIqLnoqSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LwCfXcJk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LwCfXcJk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293BC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734426353;
	bh=X1U6pqmmoC0RIH9HkceLr6y/HY6+2T4XBiVOC3gu1w4=;
	h=To:Subject:From:Date:From;
	b=LwCfXcJkmq2mrTt1KaP1m7lr7lChfM2Y9Yu1iqAowmkST+ksSy+xQRMRAHLtItxqE
	 +wK8V+giV17XNOwFvQpw687z/StP8Lv0WxB5afzZuiJOSAKwbhC3Fkw2QrX+unOyPO
	 1sxMDz1BCSc0bTIcV3lxkWQ0omjXNGs5K0MGTRC6646iPQ0vhWNElAv88EXvyNYKCB
	 wC1POUpb//mVqJuy9ixuCjC0y99iapW8ktwDJ2zlnwcT9MeQbCMQyVChLvRJyW/s2x
	 Us5YPCAaSUfTDTSY9DirwtFYidZUhOoQpHn5cEUbS9t396PjwJ2hkhrREJDfbkCIod
	 ZCZe4FSHIYVxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15C4E77184
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173442635365.6296.10122087141009052855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da9f513012b109f6d6ada0234b24ffd47e5f460fe90c4193a58311e737648283
Date: Tue, 17 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734426353
