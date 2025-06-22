Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174F1C2E0
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750609794; cv=none; b=cfTBfgSneTM5iIQTEG6YfG8scg6Yp38UNVteoQFdKNvOx+ItCPa/+DRYY4DU8sFxY7UtnFpEKckDVeJWP4JrPnrVsiekG+S7Pg36vtSnHVrttwfN/QfFFCM1ftenVVozTQemXuH7Lf2mG6gEtPbs9ZKqtn5+ZHC9xcE7JHovJlc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750609794; c=relaxed/simple;
	bh=qef4TW3KFNFl7I1PaOOpHQRRYMQTAjxVFYVe8ooJeu8=;
	h=To:Subject:From:Message-Id:Date; b=DvaSNXjCUVWustAF2WuF0BjYAS2+vfEbM1fTw3/xpd8L3hAywgYyG9TGou6XvbLei0CB+H6mGhwYx/BMd31VLnaCkzP2j407MJj0AH4P8R+mTWYV8OgQinL/jOrRYg2duKOg/nZnOhfkT4vfwIF+Lbp1MoiZTHou9SImzsjqoZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYrQN5qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYrQN5qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC7C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750609793;
	bh=qef4TW3KFNFl7I1PaOOpHQRRYMQTAjxVFYVe8ooJeu8=;
	h=To:Subject:From:Date:From;
	b=CYrQN5qbGhcJ3O+ha0vJkzkGj/yMr/gTf1TJHGfo8cK3tk2FXgMOxlOzL+OGq4Cib
	 Vb3KlhN3pD1/XIv1iktvp3HnGlnECu8DPJC2nGMKSgCSnoZuz8aXBJ38Wp+Ynh88o0
	 9zRe56dnlirvO21qw1rASkH3SSHoI6WSkpyKHL7IU30cfznhRfiopmMbuBF1H/5Zd3
	 sv1WR2A+kCCm+Clwb0ZIwFYaMbQ7lvpjd0I1FFx1HEoXV2zVswkmb4/csTafZH3C+9
	 Z/mX1YZGOBSNgMZ4HPuqB/7vmYGNS8Y7ZeDRnHrQ8FR0yfwa+RNCXEiOq78WFyq3xe
	 r1E2vKutHsr+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93159C7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175060979359.3713.16829043005658817830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2962da3ac05da16337eab3225054c4283bd79b1e53db171c886686b3393e06
Date: Sun, 22 Jun 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750609793
