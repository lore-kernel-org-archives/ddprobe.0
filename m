Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A98C10F6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658986252;
	h=To:Subject:From:Message-Id:Date;
	bh=kojEPQulDZVCFrnlirj68Kb+KWJw0lKPPbj7wgeEGtA=;
	b=EgrJuR8g6UZG1451oAklo+9o1Ly7yKJKTVxouqzmkUSxfcaBQo8SP34jvrpNoNX/
	SlEtjUZiUve+swfk9P+5iJpuQesB0IWA7pfZfRiZ3qmw3U3C2xC8NXxjD1xwBmlp5hj
	3II6QA1LmcFnWLbRWOi1qf3Oi8Z1aZOzbTUKBsp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658986252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kojEPQulDZVCFrnlirj68Kb+KWJw0lKPPbj7wgeEGtA=;
	b=bxcJ2pYACglvhM+IuSRWtlTZ8ld4Kpqs/sYTdRI8jq5lmbFg4otjDmJaje3Su3sF
	4xuBQlwreusIHGxjJaFsY227le9CfBAOYSnQg/EhqpOTR7wDDo+cruAVKzulU63Zr7J
	7vqOOvc6SmWBwY+wT52Eg2TXOfiGFrit2MxfoErU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824349491b-e95a2cd9-88bb-4c46-b693-f842dc297559-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a43e32c356c549fb084d4b4cc43c37bf03288e239f51810ec8aff12089b4dfe9
Date: Thu, 28 Jul 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658986252
