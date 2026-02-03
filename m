Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2642820AC
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770152033; cv=none; b=TmuY2QDGjm5sBAZwLWwDtoLrHd80PJnmwhTvt6USLWjOEJvLRPuVG/u/SH5w9sUSf9rP5535mhGH+DfmN44jEY6fKMUKy0+Sx2RyOLRozYOxF9f8wovpv1YYa0YF3y6Lc2hExGKddqyiQoSU480b2GbrJxlbqDKiBAYsqekX0vM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770152033; c=relaxed/simple;
	bh=U+L1U0HaSk1ofxItx3VIbSHQ/Q+AvVswaQagDPBlXAE=;
	h=To:Subject:From:Message-Id:Date; b=Ku1tHWgmtIwsOv177O1cVOzB+KWa7wPXrDaEi6ciV0h4vSvDZ9moCfDxD0ENjOmHc/RUBM/42mtXN40CBXJjDeHexIqgfxnm2NNzAGyGI+N9Hk5OOSZa8JEiHRPzJRLrZd/ihfZ+Mmm7lulCLTUoyxxlVlIKK8XdEm/NYf5p+b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWU4KOP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWU4KOP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54BAC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770152033;
	bh=U+L1U0HaSk1ofxItx3VIbSHQ/Q+AvVswaQagDPBlXAE=;
	h=To:Subject:From:Date:From;
	b=nWU4KOP1G9DCyd9cK24NM4G4hLlWInr/Hepg+2PP7FzR4d0tFP+af/h9UpWLNLpsG
	 Mroxoo7328np1VAqSHuSRX5ptcjj+ak4qf9VhQGWugFvCqTeqlC0YqtRRHFj78yW4W
	 GhKk2O1tf3RM6nFUjjwaqxcB7kp/E5oauvgvAYihXsz9XDv+00TGVHlmoaLlHvGbmF
	 HJ95bmV8yJ+KbdhEyNBhlxebwjHHDZOczEdRHXTi14r8WaUjr0BvDEYqpbszlDPpbL
	 Ku+oWidL+Q1XiWmuIeAyaaKj9Ekkk3Y5RrQAajA4UgBtwua1G7DKZsXR09b753flms
	 E6kyu2eOvr+yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20B5E8B362
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177015203360.9087.16572927919551304192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02be3ecdd6572f602afb049784b4e398866d256842eef40785615c4c9736aa0
Date: Tue, 03 Feb 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770152033
