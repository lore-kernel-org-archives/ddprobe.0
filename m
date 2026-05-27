Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A556208D0
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779841954; cv=none; b=D1ufAu4F4mxgxGaGJJzj1EsOngogYf2jl8TWl2+QvdcJQiIk0ARbN8aF9AKm7k6db8+Vn4FImW75Z6SSXy6n4WemYljBJepUjaC/4u5yClcLEZnSjRL5UXNVb59fEZ2TSbdxLXvZHBb0wPZI5d7qfL8T/I5lCW/l17ONSjS5tV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779841954; c=relaxed/simple;
	bh=/KUJ5/Y72gyx96Ymg/EL/p2ISVGZLbXxk8FPtx+U1NQ=;
	h=To:Subject:From:Message-Id:Date; b=dsw30x2Lnq/9q48YyIi0xt3ehoDYuLtM25xr/EeVIVp9X5gnBj5p1vMhFVNROi/SHL/m6ALBTDLisG3uc7vUrVYunZj81VinTrkAn51OYAXjF9SPb4m2JY6mt2ZXfCkH50hFfgNF2ulnDQC05Rv7/w0CNd5J/uVJtrlVgpx4xAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwY2mxjy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwY2mxjy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2CFDC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779841953;
	bh=/KUJ5/Y72gyx96Ymg/EL/p2ISVGZLbXxk8FPtx+U1NQ=;
	h=To:Subject:From:Date:From;
	b=dwY2mxjyBGfQRpSjd5h4Pme88wBWklsj2TLA7gSFL5TEiz6u5O5JLNFzAZ9vLIR0T
	 lpw9QLWU3HMQhKCk7xjEW8d7HKdTcbMjd25OYmlvwQCheU5WfxicjHVmIjinMYn5XB
	 cxsQ9UX9IAMeZxZ9+nNcpwigQig11rkMFEoYgyjomeNntWXcjvGnPk4/tvFXRKtNDy
	 DOjG1MNc6GJZS9PKBtkgR7fSJIUJqkXaxE9EhZD+5RLbwqVs/CUsenGJsM8UC0yNWd
	 HByCv7Atyg2MsjqZ2cY6kzHO7lOR93b8Fc3IPVXHPtpn8+J2bU8UHBURf3YfGVO8Z9
	 hVT69VDmtxAhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8686CD5BD2
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 00:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177984195368.4116.3684493350034037042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a5b4454989077439d4ef26648c720391121d8a3b3d974d0f06391cc5311cf1
Date: Wed, 27 May 2026 00:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779841953
