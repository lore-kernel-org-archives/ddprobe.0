Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AE515B11A
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718720363; cv=none; b=E+24D6Upzd5GcO7ag3Mjj4YCXjjKOI4PiKAZDNtiay2pD+Lnt2ETGx4AaX9okk6HYkS+AEVrMhfswtj4MqjEc4Tl2vpHK36k/r5j8d0QeXJK218Wgt4wr6q7w+dBVIVuCUyOBD0+8CrT0Vj6zQF11C5PAZLkoSQsFtayhyw18mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718720363; c=relaxed/simple;
	bh=i4i4te03Jm+juZL7Y+dxBR1J0WoiYLcmJ5mCI2y7cR4=;
	h=To:Subject:From:Message-Id:Date; b=KZdjnXJYRqi8jpnA9J+2OfwEW6uZk6oQQKgwTRB26TaWvfXi/N6d95vkGHkJSBqDndRx0PgbQiz3DBP1FuigeZ2vMsonHnkm1nrFM0ppL/OfDde0k4GFU329XfgKYPIQ3wTn334Sox7/osqkzHTEGZwT7aONmk9uJt0pe1tHbqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jqK0NNY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jqK0NNY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E25C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718720362;
	bh=i4i4te03Jm+juZL7Y+dxBR1J0WoiYLcmJ5mCI2y7cR4=;
	h=To:Subject:From:Date:From;
	b=jqK0NNY/kbuZWyRrIP8HH/TkIWpcBPxlMvJ9ozDKMM1byZBSFnAu8EeLsi/zWyK+n
	 66e1joENIeK3WWfpWKlTdDpT6dcAh7hgpZbNGzJITD1c0PNO1TlVdzwAX84iPzssLL
	 NLMfuEolT72xfTM04glg9Gn56POFJWBO81bILATCKbOgDpoOUG1bGgv4FjZaap+Ie2
	 NzJ50YJ4m3cBwyDTEwxuZ+zBzJYGYab4slb5iejUtHWTKKFVz3RJtGs9s00JgenuHM
	 TfKfC71a9CJmX9u0IexQNkKoX7BdgX4PopVTpksU03LcZ5bApnBwKbMQMNOkymCGFs
	 nd+4VbxrbF8EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C323AC2BA18
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171872036278.14017.15505545630910580862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e080cec830c58dc34033b91bd85e867537a3684385778020766ab3e46e2222b7
Date: Tue, 18 Jun 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718720362
