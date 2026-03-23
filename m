Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143BC1D63F3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774275894; cv=none; b=qhZds+MXKd2maG9x72IdjcoeTJrK3+ekU+FKPqUt5uxtac4J/Quu3RVOAVQSWBY3wRK6HdkWJW9GbwBS5vieJPUYcqZDkE6YI1me8HqhWwJ4ky9MKAHC5GnxoN0nV9LuPpi7TsLmF3ES+LPPHUv0+nShIbitoI07lGx3BqfSRq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774275894; c=relaxed/simple;
	bh=g9UzdGu7MX9Bb5DQIhAWFx74kHkj442sTt9SXvVFRTA=;
	h=To:Subject:From:Message-Id:Date; b=F9DDsE633NsAImn3dz09YKtV/l2mvO5hwW37fBZNCtpg3q04CAIQ9bfF89QoN1BSTiVRS/QwnoVixiHdjRDRFEMEoQfw9m2NgJA9b1KlA9nFljDVxDw4HNYvQTtTSkx+T8j9YzgTjH+KL+tNtUbhfFLNw0JxP02RlZ4ChJAR3eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDrFXA4L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDrFXA4L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E92C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774275893;
	bh=g9UzdGu7MX9Bb5DQIhAWFx74kHkj442sTt9SXvVFRTA=;
	h=To:Subject:From:Date:From;
	b=hDrFXA4LDkI8o3QJZJRHXhlBTKsuBqlEwCmrHewyQt56nx1ajMNqUMjEAFRuMAP3J
	 h61/b+8BxxLu/WbkHH2RX7t8d78b7448AmkW5aTmGBO8hE4YVem0IXtPPmN/cInQH1
	 Nl6jr03QMhi61VAhFILXRtG/4G+Y1jDDIAu5eKtx4Ezw6wALf75Y/d+QHejNsM5MfU
	 7dkw0XGnnVZnBmoLKBxEhNroB9dvm2jhnm17lbtpKYJzBlq3YFrkKErTrzlr39pwUu
	 l9zDkOmqyleEi5yLxkGG12On9QMbQ98TMqOQQ8DdkjMQjxDVSSOIAEQA1QLwHZpS7M
	 W7jBPkG1y1Yzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930AAF4611C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427589359.28903.6882066546716632157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b70e3e7ccb06482d3d440a112f2b0d3229bddeec5bfd442d53268760e84e6857
Date: Mon, 23 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774275893
