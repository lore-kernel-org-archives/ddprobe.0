Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78D4A4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 18:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646763984;
	h=To:Subject:From:Message-Id:Date;
	bh=iwcdsxAz6Z6qEcEsgY1HXiLNrfpuOgem5vmPfCJx1N4=;
	b=fcQVhYxttT7hMYMeqWwyOPS1K8XCqID9Hn5mntiQLpbfnrdFwW5AgIFJa5nsUNab
	Ajp6y0jnjT5c+D2HXO19By7uDRQZ+QXMcePPOFyev1/twd5nd7RLp/XcxrRy2jb021G
	luR+PZtT4y3cwqfCkpI4ct8l5lAJ/YRzXkxPf/ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646763984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iwcdsxAz6Z6qEcEsgY1HXiLNrfpuOgem5vmPfCJx1N4=;
	b=ZRzvnhqkoE04nCPuWQ5u38SQsOTVCrQduYs51bxWIsTOW8tnGTm2Yb7g6lgW7PdG
	BBfNvpRt8LfsKFvvRoocixEm8x5IOdZEOyvuVtCdM1PnJS9SIJ5sHvgcMdjkdlOug3X
	n88PkzP3bqaoRk+V0j6QYfmk5Nn/2uCfBM9T0qPA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ac8474d-c1de6c32-cf54-4365-ac35-9f6cd52f92ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccb51f14d0b34af1e73236894add3b4df27d2e1b5975d903558ac79d2800fb5f
Date: Tue, 8 Mar 2022 18:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646763984
