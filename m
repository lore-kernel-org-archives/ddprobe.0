Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3562428387
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716040943; cv=none; b=LyEza+QsACb7JGU1LZWVj27KnhRc8dDu8Ao/SMqfp0Ug6MJ1sS7ys6Qsd7P7jFIkB+0zrFWVs+79ur92AjxJxFGJocnxmSPq5fndwtiv3aJrkCfwR3Ii9uDUtx+RB0ovd1IYakjSHfvWDxxe+Ck9RUPoU4DOluQOs5EZnmRZvv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716040943; c=relaxed/simple;
	bh=AdHTyVIlOuibiKjPyhC6DNUHb4AxsuRMOgvr35avUqE=;
	h=To:Subject:From:Message-Id:Date; b=m3NEk2AqCRQniB4gOlhq9ISk86Etbg6MAL3A/bGXjH2Y8AXis+9cVY0um+rkc01hJ82Ohsn0rL/1xYXkrPwjSgZDhSWZgPJXdZbTpTV0d6MvZkK2d72VrWCZGo2G2GFUx2btZdD7kiEw8E4ZiBpdW+WWBbhEqCNvFFOSfduqrXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYmwZ0hT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYmwZ0hT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEBC0C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716040942;
	bh=AdHTyVIlOuibiKjPyhC6DNUHb4AxsuRMOgvr35avUqE=;
	h=To:Subject:From:Date:From;
	b=RYmwZ0hTKG0eCf0sD9aEqHzJWxKPiUzETjB2Brqh3onFZoSd7AbfHGQ4rIq4+8QhN
	 fz5Jp0RoRFFbxCpE1q4Q76YMuFTF3Kxl4H46Mse08ckN5IcSUgwMEjbv8DVvD2wkUN
	 p7TPN/3vVottfEbdCsmtIQ+y0lMjpPknkJnf9sSCIkN5VvWgZSnxhJWEq12gir6h/q
	 P0Rc0JjepUnNJmfJpTFx+a1YTY4TfEyNDLA2PuaiS8ZShtFp9nfo0/xjC95AcUwXqG
	 YANS3DEGC1wQRx4utvGsH1nSGb1Yu55dj6ARVFmi1RnKy3pbRQQf00uleF3xw5uHuv
	 0MiuWO6MnGdIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B52C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 14:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171604094275.24922.3435980330450077710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57814cfd1d2c997f4e4cbc0f869f0f6fa06379089bafc09a457d21253ab4d11
Date: Sat, 18 May 2024 14:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716040942
