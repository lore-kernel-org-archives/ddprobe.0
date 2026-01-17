Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34C2E8B75
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768628034; cv=none; b=aPMYOzGICjkyI/krNIdiZnNZeo1Bmb1Sm5UROL1mCEAbzXssYrD9to5Vwbe5+iDaoa1jv1twpHwQN0gcnUEJ/gr8dJD71Gv/FrunmGb6mVigIM6hKFG6/5Y4puS0d9nB6NVWXTYD0Ob0YF0VLBfbFMDUgIqdZICvwOUbR9ol3hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768628034; c=relaxed/simple;
	bh=iHzoiwFL6f4xwdKN/d8oE3QOVlUYDRw/NTXb7Tn0hK8=;
	h=To:Subject:From:Message-Id:Date; b=WHny8naeqxideggR97gZd6O5hCmNzN4JCtHzeMtNPUrnt7o4I2AyroJkFk88E/T3QB3V0INhFTW30M0CNapQDa/CAYy0tQK3sWm6hdVzm3TjSelD377ao+JRtK8NsUo9p/iqrtmZuPP9sRdQD1kUV3XxbuhlFlb7FonSzHAIwUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SqHeGEVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SqHeGEVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EEEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768628033;
	bh=iHzoiwFL6f4xwdKN/d8oE3QOVlUYDRw/NTXb7Tn0hK8=;
	h=To:Subject:From:Date:From;
	b=SqHeGEVwo4uLp6Tlh5g71vg7ELphhMq06iGyABpmVg8uHSpdqHQ5NGVfCOducQfPs
	 J6LxtmWE+2D30/WfJEe8DWI1B+CVfLkONeIJbRvdnkLOn+1QFXJRNWmHUtyAE98vsm
	 O9IdeiCwLU3mO4mkk/3jw4n/39x200X8N8y8ebazDLISziqR+AjNY2A3BbGrWd/yWF
	 u6NFFalUJ3Qcfza41UtTLFcPE7LgqwoSXaXuewoSTo2RfDC3W0UaODHv6NU/lOIvFV
	 3yQwr6fsLmwfLVGSOhaYBoLo2q96abjf/C4NDqAk1dQ4cw1Io359q7k9zS/TeoAMr+
	 /gKVcvRDiuE0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923C7D4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862803357.10674.5486240710345064769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace9d3411794cd5ca49b809bf148913c11a697a9961937ea08554e03ef6444f9
Date: Sat, 17 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768628033
