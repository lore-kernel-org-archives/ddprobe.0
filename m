Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6923930DD1B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782094594; cv=none; b=CLS+3H1jKghkiXwnzjdm9LzZocrSdGorZnl8z+q88nJWbfn4rUs5f5ysx1ImR5YmVIEp8MejMGj5JE8Nq9q2iB3/1nHhq3qX1RBK3+EvoMtPv7ozK3MhcVrxQbIpYFgAmLF30mcBfNxi4f6Y8KuN+9Hf5+r7BZKeZ4ocJC+ljDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782094594; c=relaxed/simple;
	bh=m2O7gVWwiREesuI4ZhVabuEsStTrtQm/jIUYRiqm9Q8=;
	h=To:Subject:From:Message-Id:Date; b=sbYk8pfaSVmkYadP4cXQlOtOEu+69yGy+CaDR6V1VS3zCWXf+5zT0kksFaHDAqgV6Zty+yJT0d+el2OUOIdsG6TGNfh9Yz2GfVPcbpQGLvlG3rS+nYfFTwBZDufJw+P2oB1+Wl3/ongXvGmQRzTeRG8tjgr7o5qY87m0OpKbClU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hx0lKIgz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hx0lKIgz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D3C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782094593;
	bh=m2O7gVWwiREesuI4ZhVabuEsStTrtQm/jIUYRiqm9Q8=;
	h=To:Subject:From:Date:From;
	b=hx0lKIgzDSDmlv9XS7MzGjwwd0uLArzc3mQgjAGMI9ZNjLIIqRbTA8Lf/tLzYhQXt
	 c9+oba9+F9TmGesFVVhjHU0ljQ089B5WNpbHm2jnGR5yszImXW+caEjSxX6cyP340R
	 REdGOYZZ8p1t+3uPr703bq8XbT+9hEAjIWosgf7qkSGuGOfYVJ1pMFdafQoksEY0I5
	 kXsTOmPTnpAscQbOxKPoO72MbDpzSobZIoTnYYGvqxJvysOHbCDygleanMqkrSf7gg
	 9rT0BWZ8ot8p2lY4c/+vhga0Z1EL2GujluO9GmYVYLAeePkYD1q9Fj3+ZwIdDXjcqd
	 QZbf17J/iJRoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8ECECDB466
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 02:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209459370.8211.9033673397010293573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84e093af9bc25930b066f81e3d4b65119453b30684ed678ce1a22b5148355f4
Date: Mon, 22 Jun 2026 02:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782094593
