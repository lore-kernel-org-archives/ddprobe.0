Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD8E306B1B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529834; cv=none; b=npVm0Ys/sLXUFlfPVoGqDXo4dODIZlgsvSSmzIsSmTY9xzP4Hkdd9OJkIDUaFS0JkEWsOskHgn/hDaHH8/GfsXrtUXt/EzbeFfx5rZtJCOI17VdjJBkM6CIiUoV7G8Mdg/qX4a42AdTiaW+r1518SSxf5GRXhCmH1LHeSl53hbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529834; c=relaxed/simple;
	bh=icKYnWjE1ZHrCSzY2M1Tz8HQPE/UcvyWxJQUDCfRCjE=;
	h=To:Subject:From:Message-Id:Date; b=hqNKe9EYWtXsGR+e/1MT3Uw2UY92GDFk2KtTkptXzHvkDQn4zhsJU57d1ECzkj+90arbVx/JkdNAAfn12B32u3a2sJ58XDcqM/y4YbYJKYgJibpaS6ZZPhe48pgNEq8mlnnDwi5Np01JbBL9HJxDshk1Pm2VbITE46FB9HJm9Ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IAAyl5XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IAAyl5XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B31C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769529833;
	bh=icKYnWjE1ZHrCSzY2M1Tz8HQPE/UcvyWxJQUDCfRCjE=;
	h=To:Subject:From:Date:From;
	b=IAAyl5XMhJqfc88GI5EoB4nxfzj68DWa1sHvR8cA7Gw1fHe1r/122ALH10p0Zbgza
	 VhNgXFZBsu2QSCUGX3apQB58NOKRVwgkXVHLICxiONe2u3dXt0vwLAvTfg9Uo7pGBE
	 q1KzLllRyJ97Ni5BLaDGzyhOYWcDUl0Lep9xnUnnvWv6ux2gHPpcA1BZQd96pKt+5N
	 fd9/C5aFsq+XOlIzB2hCq42ALdl+++rKGiArPz6GuWLcz4WlT35S0ktxsn9+tUsTwy
	 fA7e0YTFo/MW+RlrIS7OT4K8/RfDPT0R/A6Is5UGtJre0fHnbJ7VXDu4WKEqQBmuCb
	 blrV2jiYjg3ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C03D34099
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 16:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176952983359.1723.11713535028276371950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 989f1f6f89fd3da73521239c5ca3785535835cae20106b5fab302afb2cd32246
Date: Tue, 27 Jan 2026 16:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769529833
