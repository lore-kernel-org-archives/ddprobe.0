Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EE981376
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 10:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644920184;
	h=To:Subject:From:Message-Id:Date;
	bh=PA7OmsT05DKM/hripwsGRqkoTBuraLdEwBiicSc6GNo=;
	b=icm+X9TRXp41lBs16uVmNjcTFv9yJCR8V+xJmQWwanQKC2j9QBtgy1JUHE3K0y7k
	y4Uhxo+4O84chldzNwgtN+Nu+Fx7UtVvIo2KL9WCAev/K12PzwHJawXIL+ThD2SsVK6
	Lz0D1XeKvsLnkJc1C/ZS0Nbx8kLhlebAbihiySBs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644920184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PA7OmsT05DKM/hripwsGRqkoTBuraLdEwBiicSc6GNo=;
	b=WsIx/p5YU2BMoHP1Ch2u2peSjo57QHIeyexAetyjU+tMD97cGn8hNtH0IVYNQ8PS
	4yATDXGWQjiw2RdRgCzD+spaRCS+uRX/oTew+lA41/x7ZLOl9/yB963hm3+BeeCwt8v
	SO9yO058QO8BSswlQX998EUo4QvCVl9BILLTnXOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efce21fb9-3a43aa93-c309-4358-b827-c579a9f9834e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: beb6cadea54add188524ec9bb9a6bb8f66f8b019277068c55e436115e143fa05
Date: Tue, 15 Feb 2022 10:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644920184
