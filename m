Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3875B305668
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782230794; cv=none; b=j/MjDjgH9iytoQRBhLx6+ywJCoibnEIW+2F4wRLHCtYifqcMJOc/wVWU1Z9DBVolryXsNm2t391MbUd+5R46/MwWrdqjGisTCno6JsFQ/h9/ZI0oLu8Jt6xj0rpzihwQlBp6v/jZdvncG4XTYDmUoMBMEUWMVXu3EENJVNBFsqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782230794; c=relaxed/simple;
	bh=BkP7YXIYx/58IFcyz8xicNcIJTfkyb0sF/Gaj4nJif0=;
	h=To:Subject:From:Message-Id:Date; b=gqs2r+rtH2PfONiFDY1dA6o/cQYbazNKzgj7NxMmEy4sdkrMNlwP2Gk4EgHEAceqCe/5gHH2Us67A7Sahg848P90tjzOFc38p9KMdc/nqvsV7UgTnPLMWVC2FRBmOeXFzmPrYNrmA4ARYZc144Ot5S9VdKSON4Ml/0YWa8dyucY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UivWQRQV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UivWQRQV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8EFBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782230793;
	bh=BkP7YXIYx/58IFcyz8xicNcIJTfkyb0sF/Gaj4nJif0=;
	h=To:Subject:From:Date:From;
	b=UivWQRQV3GPqQEgeD88UKpkOBTimnecBYHeeDyieIfoNa9TFFVFKulK5rWInCvTJn
	 8KzcOJhzxX9V7x9JVhxeMT5T3LcJg8pkRICjMjcb8Ck2XnBPPX0qG8D+GAH1qjHIsn
	 ozQevCZRktlt5aVD3oxV1RdlJ5hO3YtDI8EGi3hf1y1pT3f4E2oqoA+UVjicjtZTLu
	 YhgvvlhgxgHWjgmt/9R1a3bOU9gvk2TcxzpIh/Sx/qb/+fnEfOQfxQdmuiSxanrRos
	 B5wyJlBR6gzhway4HcPmRR+0cFegYU7v0DdF7rFsL5a4/q4o/Z903AG4iqOmFEQa3/
	 E9/BvrvO3PD7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E5CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 16:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178223079368.32240.13247074965138494402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bff089e1eb36ce4f9abb1daba57cd40543a3d9f8d5de864e1ffbdaafa26d9af
Date: Tue, 23 Jun 2026 16:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782230793
