Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C81211F37D4
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762227593; cv=none; b=jLIVdgLujzUXUm/n+N7N801cjPuw5HYYrjt5baM3tBcN9zPL8Wfpl56KKHevYj3T79yExgIaCAmjzlUKiMVntVVx5FjnpzJAgy0LzjT6uPYsC+xDrqK5CLZ30tR52JL3wKHHjAOn+GnPA8rh2sqYS7c9bHgRK9C7pciY+laCWgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762227593; c=relaxed/simple;
	bh=vtDrSNn3T1pV701loWhAnjjuaf/Tn0B+5yTaTiZxcQ4=;
	h=To:Subject:From:Message-Id:Date; b=WI4WrJwRzfsaBPjfjc+Eo5ojkGFjRbi2Ei5azTu3TFx+RZKsYjEdiibxUbSHwQuUWp1nQN0f7QfRdOiL5guh68kTOm/QwPOyUMCVldnGNmUR8HN+0LM/+JLlShJzGFNzdmrcAoajOFRz7GZPCjoz/8Xr4SYPgv0fl1q6JzCIzQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPHX3WLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPHX3WLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A617EC113D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762227593;
	bh=vtDrSNn3T1pV701loWhAnjjuaf/Tn0B+5yTaTiZxcQ4=;
	h=To:Subject:From:Date:From;
	b=sPHX3WLaHkuliaAEvi/bY7mKvgonGM6vtbA+vyVk3vGre7FaSqqyvCtyuKaGRcRbj
	 rGTvcWXW/84lCn5bwaoqHGMZ7JmS+mugD6aBWMOfENgHtRjC9eMgG72do6JHO6CujH
	 lHPoWrojBehSjiUobpUGyfV7fch6OVtCxD912ZUDdZKSxm6X08n/CQhu3Xu2jldk4G
	 i0dmlSXrWbNCBIC2YQknfvYW6gNtCqV2l6D4HgRJa+rzCGSAaeZy5PB31U5V5T9cNL
	 q2hrDDOKhWW4bCE5rPUiiY82kqptL3mq7QE5wEL1F1KNGYxQGs0E5tUiRE5BqzSWsQ
	 C8cQ+9Q+rOrQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E09ECCF9F8
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222759363.22471.9957795785387485308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0505860a0506b3cd9bd57fb02ae2f3df8b94431c7203aa6ce160ac9061ec7ce
Date: Tue, 04 Nov 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762227593
