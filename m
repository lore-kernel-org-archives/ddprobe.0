Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250AB1F4CBE
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754345394; cv=none; b=fajWu2oMyky3/MAEDBtps/bKzZVuf+G6jbxcHeNGI+v2uvDFWVd71ndIvRoGzdozXnvq+6NiJVAjSF5Pkip/Sp6KppGZcTRQwYlXhqd4iSUnbI6jBkNuvHsrYOGGmiJjs/NrLeyA3W5BQIoI15TyzhoQClftXLGxoGkzMqVHVkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754345394; c=relaxed/simple;
	bh=E0SlTzr4k1wuQiJ6ix3Zc+eYc2zVzfhJqI7sDC+JK8A=;
	h=To:Subject:From:Message-Id:Date; b=l9Q9RLVXvxCb8Rc233pZrLvAurw2xHNEF5xnf+Msv+OBk6sfxsxrMP6POUjEZ7EfkWmnbjxz7b4pv+Dd4gBbj+cacrj9T6sLSQiNlyMaudlQdIueTRBVUCVkAH61O1YnUMhup6OZP71VuDIOgZKvyz9jADQGcWGKQemxAAV+7M4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heWQ4MzN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heWQ4MzN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8A0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754345393;
	bh=E0SlTzr4k1wuQiJ6ix3Zc+eYc2zVzfhJqI7sDC+JK8A=;
	h=To:Subject:From:Date:From;
	b=heWQ4MzNZymV9dhZNKyTiEqeLBE1b/OVcq+/N+xNVSjpivfk4mOqpMcL+juiob1GL
	 n6yuhm+JhIFNLq52qu+qMUGbutw4D4BLZSLCk+fwfNG8DtYlJ0AOMEkwZH0G7T3BZM
	 N++0YMHbaXCFEMU1SG42gW7K3jrThg+0opZqnMs0oM4yzLVvDBV0kxTkokXkWkBh9r
	 ltBrXZy9AzvUTykc/QwITGDh0TLyFsYYSn4+RsqkOY/StalGUWpjr4zmIxMB2vuqaH
	 zydEWSSbZbXIM1+Oz3xlSkG4YwnYhuZxJQIWJaVC2eA7uA/RICCfIJmNMc7gSEl/HZ
	 rh+j48YF0qP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA58C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434539357.27837.15588522182055444006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf50e0af6d6855733877c3393cafb8a22286e18ee634ee29e08527a215bfad0a
Date: Mon, 04 Aug 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754345393
