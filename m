Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2422E11A0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749824394; cv=none; b=uoQk6ryx+5S+3//PVP1mDr/kpwXnlRr/NllCbpnvWcs72UMfLubR5lzhdwAaC/vMrhspi6EhbkvWYQ8LdJUn9RNcRN1VV+nBUWV99TswVtQXMqx8DZG0l4OsUQ0zT8FZKN4dAtNhKpiHaYCIY2k9RfqySbnYH/pT4CF3udpbDY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749824394; c=relaxed/simple;
	bh=jkKTkARs277gtdckUI6NpQaVZ+hGnuaEeGRNNYHQ9pc=;
	h=To:Subject:From:Message-Id:Date; b=N1hJLpQXwyQ4BQtp5RD7Q+YCHTfA8u5Bzs2pXD8WCvbCSbNutN5BOPQW+cYIxvfkB9+qgaLJr0/q3sZg55nplWMLvRCvCDoaBwGcs6xUUqBUlpvwoY2MX02W8Zv6M8+nwzkM9xRv0yUau/rfZFfs1FPcxGPokfxNZMoYhCBh/7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H979lqVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H979lqVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A44C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749824393;
	bh=jkKTkARs277gtdckUI6NpQaVZ+hGnuaEeGRNNYHQ9pc=;
	h=To:Subject:From:Date:From;
	b=H979lqVxOCBB4TQopoODvLV3hiN9jVLZc3yoTqmkKOzlM/xfi4QYm3dXSuyG+QXmO
	 aYRxEbqW5K7MHmz0nc9A/m3uCuFKmJd4wULML/RunfOOBP5f0NYe+IXAFWjOeO4VyR
	 1eurYUvmf80wI3GXgdBzKpWNFP0ljJu4oFegI/y1e644cB1rHkdMWI3OCG3JfaYAGh
	 Js+/4PtwFH6kBHu1xn2/mtWT//6aTSeb5H7AAQAdisl2u1EBChzdZRZe3HzWxrtu4n
	 84wBSwCfKdpvJvP3K8zyTiIA9HB9jm+epkcEUaunXwRRA+t4pZU6CugLb3WluEhrfz
	 Wf4NmyGrxds4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143BC71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982439358.24415.8151314402269417859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 485508a20050e5dff0d264544359af61223bba74e64603c5cf2407cf09b826a7
Date: Fri, 13 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749824393
