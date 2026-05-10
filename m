Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D5F8145B27
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778446834; cv=none; b=JNdeDKG+JGjWezw7KlN7Oua950scZRpmwYS2TgAQML+9x+StYphPMvdC9plmhsOSb4mPf+mxcbM97umZjeSWDxr6izNMrs0acyFA9FCw/ZgEp1M2Xt9s4mXpg7BrFcUqhkTcgQKdRd9g0J8V9VR+OQX2+/9UltN2Ty+h8Cw2O60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778446834; c=relaxed/simple;
	bh=VQWmpVPvvp7l0qPtFh9hS1tpXtckrS3uLckfGNqLoQU=;
	h=To:Subject:From:Message-Id:Date; b=EOzD1ZqQDWNWxmKCcxSJUNo4PHZ1JqjDZUGI2KTBrrXHY2Kb4HqdEGRd6MNNr6c7y2l/6q1IWq9upX7htDIUnPIao8oGgAvnoDgcdQm0YIlNDB0dfTQm2nxQRnNQA9Gw0tVbx2liJQwSz0WesjXOllNdc8ozTSxnaB1ol/teoAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g5rZTq/W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g5rZTq/W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5D15C2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778446833;
	bh=VQWmpVPvvp7l0qPtFh9hS1tpXtckrS3uLckfGNqLoQU=;
	h=To:Subject:From:Date:From;
	b=g5rZTq/WX6IqHku0IkL9o6ECD4/zfpq7myWVP+Xd6eF/3xYGd80uh8qWwGT0BHBQm
	 gqPP7+WgT33O9bbu5/lGt6wHMqxpvWC/zpR+ssRIMzpphaspl7+WF27ChNHqJs67qF
	 M5zweK1jygWI+yR/8ziSk8lapQ3OsopI5PhanGlncZIQjKVSLw35f9MUGb1+PbK2nw
	 9L86iOzCKw2uOrR7SDk4lhnR+cQn26I2a/9tOxSiLooPhghR62bGRVsjd2e5YBZgc9
	 TWrfQU+luk5RgTViKBWKQkQlxZuWBDKaGttgDwJAT1AKxpP+NHflO2VR3yXAqpkCmh
	 RneNTUCbgTYtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64A4CD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177844683373.28468.14827831549171016832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6911554225624c91f7632c99e05ee4395ab53a2608ec8a3838898509493734a
Date: Sun, 10 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778446833
