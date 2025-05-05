Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E9C1D63C7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746464394; cv=none; b=Cw5VzEMgmV5RGOr+R4kcTgxIeF1kmkX4OpNdjnsSKhMCMzJr5Nj9kcnmrcv93373K/ouFfMhsTBZPwaYtj2X1Jc86F/K3Chv0tZy+SX/MIgLe9VhlEXH24pCh+x5yYbS0hB5fhXs8MhVnQtqb7Nh6vPx0KpjlLDRGzB/fTZjpts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746464394; c=relaxed/simple;
	bh=Ar5+wzlr+YLjsz21+3f9cFRR3dFwye8PntEbOApeYqY=;
	h=To:Subject:From:Message-Id:Date; b=Sukw2CcGLyqYNBJMsHYgbgD5LqUK8ypOfQyaWPObz5hyL7bYllxKJqAC5TEkfbSmP4BeskOVPMUrCaDokA5hKDY+bXA1H92Zc+6+ILQFMxVR5gSFrFmB2s5xL9i6gxzDZDVnZ5LA6zhKtvePz997clbrsuksinhwX3Qrz6oBSl0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qowUb5eb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qowUb5eb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FD51C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746464393;
	bh=Ar5+wzlr+YLjsz21+3f9cFRR3dFwye8PntEbOApeYqY=;
	h=To:Subject:From:Date:From;
	b=qowUb5ebldOxh2tQJmFGAcDVg/MuSfj/fZ97x1OCtl3R4fYJTagLaaigyvOWcmAh4
	 ekUHUtmz46W62AGfvlfc/y7prEQRNm/sr+RI8QpyIl5J6Qy/HSYc1AYZpFw/NjUVSJ
	 QAHg/3Qx8k+TO+aGqnXPjt14VwgA+yZwKbWA2tUm8S8varrthiEAJqBApqBoYQG/qc
	 8+ATJ+qbk5YOUXTt3u9CCOx4nEgNtDKpazZwfgeOHIQbQ4UGChAd0dsHYqTWiUcGO3
	 ep5Qdkvzo1n+gJnQGclEpz/wcr2I+3lGB73BgA41GEvMmZKfq/17JQzwVqiWJQFj3j
	 trEy+QG/JDmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F79FC3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174646439357.21987.13851169111628912730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e916a107ccdf6be6fcc16d1cdaa388065684e6f5cb27ab60dd8f551dc27dedc4
Date: Mon, 05 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746464393
