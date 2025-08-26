Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0742E370E
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756184394; cv=none; b=d3fpDgAgZaZ0blYa8pZ++MGfVzJxcFSdHf0/K2IwQbXDJA9IPQCbbKql3mhh/vA30MeqzpRMppn7s21XG3lIH/jQNZFrtBl6m31RZ3UrgFqgNMkbFbH3+WDMtNeHZhENFNjGTRftedoXFztPfja1nlpQzeDcIit0kldD8pUXd8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756184394; c=relaxed/simple;
	bh=n+yZF0Ps0t1Nn02xksqbJ8oP9ewb8u84qS3Sag6B1oo=;
	h=To:Subject:From:Message-Id:Date; b=QTKAi9f+y4EpRD6Ibi5lMOsA+CuaS0DhK2WKoEgqk/ZbBFnfblmwfPwbGnSDys2sRY5R8oyLHg+aZeUZDO6gUVjFCVrk5lLxz0xzBARmqFJABrnjlQN2cblHo5h16tMQFObZAbwk3+vxfIFeri9QUF5Om3z8BEPweblviBmVOI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCCVQFDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCCVQFDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C6C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756184393;
	bh=n+yZF0Ps0t1Nn02xksqbJ8oP9ewb8u84qS3Sag6B1oo=;
	h=To:Subject:From:Date:From;
	b=cCCVQFDt6zW4Z6CzCJ0WNzIQ9X+auhNuE+uzOjqQ+aP0MkXJLDYi0UgC3GoloWBCZ
	 5LYG5SSxb+oxlWhKwmn0Zer8iwlyf+OPiUAPXHhtm5jpeG+0HPV1fJqVxsRA65Hdjx
	 m6y/Awzkop/h3E75KmvzOcPcxwhgYiyzvErzjuEy93kXwnOxTwicMVm5HuksY0xJ9p
	 ySWXGMLTvHA2zyz18KEY43+6Z8sd4Im0tZrIgsaRtC/XaD9LM33UfNhJkWXhy666tI
	 Z5sZFaxTnGE9V3OAcdLQFnWwgUxu6N2PNfcnQuZegXp1QRJ58N3eqMu3oaIMQHJ852
	 1TiediaCD2kKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDD5CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618439357.19279.5592606821026465574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760a11ff28ccffc28656e0bf66367151819b24036459bed4a263d1164f2ddd2d
Date: Tue, 26 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756184393
