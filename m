Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B77D36D513
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764617574; cv=none; b=WnQ6nUK4+b8YqGqTxdWHRQO8XeBR4Gk3FBEjdaci+HAT6dc3GLg3F2bjOHfNS1fO+PamMZafvFy7RDj3d2B1jsXyvq/Plx0DG7SfqHzGuCgnv8fX6Haa9qsTfF/b51xn9z4V9O8PVrLErC6lD3eqQZkVeNqhG3C2pERBXoDS8Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764617574; c=relaxed/simple;
	bh=X3XKmLQyirpGJTUifOhYB3H+UB6gVNTKxcaM132LGuo=;
	h=To:Subject:From:Message-Id:Date; b=pFzSYB8rQOu8gXoDJaS/wRWgUCp5L4o8hN6vxdC/lPmt4e/L0dNeJQv+UglWNpJ52z67u1wkvwVWX+Bmjyu+QFHkvbfDDz0TeDGGs0GetDCEP4P2/XXG6hllg6i2kGliP+JFqk8yiJdHSmL6nUdXCeOYDYKrk41tIVHq3RuYC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TpMGrdgo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TpMGrdgo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1348C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764617573;
	bh=X3XKmLQyirpGJTUifOhYB3H+UB6gVNTKxcaM132LGuo=;
	h=To:Subject:From:Date:From;
	b=TpMGrdgoESKXI0h3gWE9GsZxxu/sy+5nAARsSj3eisG94AC/A0bRS6IxelwxnHzh7
	 6mlpeV8lJJj8QTvh2WZ/7vVoYK/FxuxQI2QalNrKOUvpZ42FUBFiysnkBfHNkhWbLp
	 w7IsqBRCKlL7sM7pkUSXNI2NNt0U3qoGCba8xXb0/3+gFANqdPndKq29tYnTkpwg8Q
	 zT1e1bfWzGu3dSa+gRwxJ3XlTaqgMdTPC2cJuQxjjupGRsie7yOHj7vBIjNP6Evzug
	 KEPPLqsmKiNDChQw69KYPwzAxhVSuNQM1+8RZ9F+erv5sHk9TXd60Cblr35po+gt93
	 LkWkF/5lakkzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91232D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 19:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176461757358.6019.17270671316672183423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34efda7054ec4fe024d53d54cd2cfbe47096b835a03245f855300d5c35a95178
Date: Mon, 01 Dec 2025 19:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764617573
