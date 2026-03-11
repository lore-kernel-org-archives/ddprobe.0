Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DC03C454B
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773233094; cv=none; b=BQbEgSA1B8ryJvQdoPg9IR1+WG8H2GV46lyqoBTWwkbU1VHNF7L1L5lisdVgYXMNHlxPUQMfvDtZy+VURRfLwFQbjIDLTz2UypowHJWzs0FLdrtqi+gLfyLWyp4UxVjPdMX6J3oeMsuXQ1WHhbDjl+ZTwHM+ouxMzH7PVKLf3rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773233094; c=relaxed/simple;
	bh=vPoQef66rz1Ej2WtT7/2uvaSqeXn+ft9YHnSGochgdw=;
	h=To:Subject:From:Message-Id:Date; b=hKEjmWHw04w5LgGH7HY2DU84GPkuoCauU0kKXLDwix+fo0Hyu7/kC8pZvhV1NKIG10z/wcjTFVdAIOg1xo65F73RLy71J9+CM0xR+GzwkGMECIgv0GR/BvIlGkIKpuQQRQYNaCD+FgYVeiLSkzCz/dNINU37rcC+UrVQ80l8JpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWA3LrrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWA3LrrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5ECCC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773233093;
	bh=vPoQef66rz1Ej2WtT7/2uvaSqeXn+ft9YHnSGochgdw=;
	h=To:Subject:From:Date:From;
	b=HWA3LrrENyDM0RfMcDZ7gzhcaREhqz34E/deZu3f04lUlOijL295GDCCyXFU4qxTb
	 9wcoLxY0APVVQNpZz8chzGbVxSF9ZUE0reIqVIrazrwLqxGsnBOnOX4o1HW+fHvJ+V
	 WJJfGRMWD965CRHod6dvrBhcYY7ISjGlHh0JssQyc+aCkpWLNk80mzyPI/ghU2VdsE
	 S1X3PUEOQT5F2VMb8iydaMbXdXV+dHt1z4PpVO3nTt8KqZnZSCddhFwCkDixKdPQKm
	 Ja1Hlk8n/uWTzyhk/N8j4WN0Kh72Pu6lF2UbrWB1BAs4jHiiXDLV4dOTUCb95ZnQvx
	 B4ga/HezCj1QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9656F1062892
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177323309360.12680.17244770796197769881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d3d467b67b8eb6b1693e7e917ae1b50c648d12e9d5efe651967e6777b44d1df
Date: Wed, 11 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773233093
