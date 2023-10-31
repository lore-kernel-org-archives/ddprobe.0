Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AE516FD4
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 20:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QD+n9xgZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 812BCC433C7
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 20:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698784696;
	bh=LjFINAWaUelRdkSNWQ6A1V6+Zi5Ol/kS5xo+xSkq88I=;
	h=To:Subject:From:Date:From;
	b=QD+n9xgZfuJdRvrf1iqxE/QrAhEr52lRgnUQbligJayS043W2MOK2bLMHyUDZ0GAl
	 ThpY+h+kJfRYPFpl4SR7uzwVHte2UiK9cfeQk7oUD7CD7GkEm9qYFGGXe4P1LbkDpN
	 w9irzA2Xq+LudnLiukPBDpbjOzirGFGyQycsAvf9OMJx0nFR8IhIvDp5iWjH49Y/az
	 +yOf2Pye8wJoiw5QnsTLOApjJUazZlsbv0cZvmSdhua6XRFupzbFUTnkbDM6eRDNNe
	 h8Ruvuz3M5cQPxeIbfJOn18grpHfjva1f1yiRtdDg/MDqP10Ntil/cUDw4mJCNRXPN
	 DNOArjuKZBgdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A71C4332F
	for <ddprobe@lists.linux.dev>; Tue, 31 Oct 2023 20:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169878469639.16839.11056222163246568359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 503b1e0a0cebcc5c157f79b493aece1d739634645100fbddb6b099910b8fb0b2
Date: Tue, 31 Oct 2023 20:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698784696
