Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9D264A91
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739883535; cv=none; b=cgRKTHY2unZMWrVF0JB9oURw8l3aM6qDVgBQs1REMpIsE3MijAyo3uFCYEKh7RYt0oFW5NhCWNj+FYfS9qO1nbfLmT5Ox9xRSf3HxfGN2zlr2b5y3sqx5hhWYsrnxpbt7LcY2TqqsaDfve2ggdmXyRLKYsV4/m4OpuGTqkFmSJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739883535; c=relaxed/simple;
	bh=jPnVQqn9pIkud543OIGVIKfq/1JX0ChJGTmzg/Qz+zo=;
	h=To:Subject:From:Message-Id:Date; b=jrInWdkfO0wcA1fHNzERT+sbQD2FF8S+BXF1g+tCa7cETkOAOpv9wmkSFYU/qVjETj3+3qmK+n4n6FJlwoletGRtm8Kx+At71mC7x/GHFcHsI0KUA/WUYld4WZT4HwwsiPyIMLYZR+uEEeetSDqPnzrJWdE7ZICQ61jeMUmuV+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6fXSV9N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6fXSV9N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B65C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739883533;
	bh=jPnVQqn9pIkud543OIGVIKfq/1JX0ChJGTmzg/Qz+zo=;
	h=To:Subject:From:Date:From;
	b=g6fXSV9NnrPMhLwiFLRkmIfba9qizlhiL6Hd9DBd1VelHjZWFeFB+hAaEk9aV38jY
	 QcGBu+GBEv6qfFeYRY6IKLoVTAzdmNIzYqwd68x+UpUIe4ZU6POWyEui/XiAB+F76t
	 eU19kifAW8vHyaECCLJIPKcadfH4xXofAYRtiYal+71rzOK6t+SCh1GqGmwq17MWeY
	 Ch2+8NSsL54Lvur9yCRV+7aw0yTyHMgtlnALwkwvlQtDdYLaG4zoRzPTlqWfrDN3Yy
	 i3baxCIYrbjAB2tX3clhRUGDentr77YKfW3zSP1trlyYxIkwa0S9Yc0m7VPZ1uvIa5
	 jfWE/lPAseh9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969B3C02198
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173988353360.12442.5757680733460048978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edadaaf27254a775aca4e3538134f63392818a2d6e9303331739b809427ad68f
Date: Tue, 18 Feb 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739883533
