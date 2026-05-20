Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 390751E633C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779295834; cv=none; b=GlmfHl5gmlMeuy/6qTPRY8XZsg3vm/Le5ittnazKvOFJstxadFAGV4qbe0hYMPGbVX/LX5otM1JENXIYHx2Qheze0oVsVIN+v1GOhBiJttfqvtBZnbXlowSZ/LQ52TmnJBr/36wmEmb2bk2Yv3NXXLAlfImsqJfQt9HVybM+C4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779295834; c=relaxed/simple;
	bh=xsVK1I6TMXZK9zmEbG1YBsIEqZwqjQ/oLTK/odCSwY0=;
	h=To:Subject:From:Message-Id:Date; b=NfUUMD+OCjxgWXCH8CimqKv6FCk1JNGOahdV2zVrnZHVMUy2DUQ6CWW/dxbyYu8zz+isI4UqMMIy5hRhOykoqO4dy8m7xwlrkJ7jfZ8bW+VrhwdfdwzBjZxMuzJEiIklyVzmTNeGmDGxw8J1q82VsGiCvh9LNtqPMzgopDUhKkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBnPs9I3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBnPs9I3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEDAC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779295833;
	bh=xsVK1I6TMXZK9zmEbG1YBsIEqZwqjQ/oLTK/odCSwY0=;
	h=To:Subject:From:Date:From;
	b=eBnPs9I3hJ/Zy7gYvwebxdzqNfTp4F7lURjlnIkSfZEHEmOJZ7r4p8f/rjgIhTajk
	 cQ+gXE29NURl/3+Ll6+blx0h2fR5+vxGvGl9+3SCk00Z8XRbfFuJlmPkbse61jaHsY
	 mpusSfO5O10NIwgmbx9kG3EvW2Zt8njcqeh96UFJSmTe/ZdTB7I6RsEF6Ny4KvKPuS
	 mPs0Zz8+JQGyk2Qths5NpEg2T6OfGKFLTUrXMB+Au3WB/LgXw5EaY0QWS1DLnp/AEo
	 KM3vl0WzwTPnhaL42YUnHgg/XYk3pTcKSVO11aztA50GespED+HdSqhFspRiXsSPqI
	 +789OSbT6Wgow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2FA8CD5BA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177929583372.23355.17001990880808517746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 930deb19ccfaec19d98e1fc6111ac15606b80a8ab5bbca949e4ee5ec2e535d60
Date: Wed, 20 May 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779295833
