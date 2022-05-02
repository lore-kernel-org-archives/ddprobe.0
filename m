Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F882C9E
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 16:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651507199;
	h=To:Subject:From:Message-Id:Date;
	bh=oFTxIAI7/3AkTMGGfFMoCyzxTMNaguBKHVEcQKjhSHo=;
	b=OYpEyw6N2/go3uUtV7kFZrnbDtGoIsWyoIg5emfEMBLNkbdexrZc+39Ebg2xaFuT
	b92oJP7I47C301r8qLNcVPNJr3Fqu/7xAOkiADZd/DrGf1mBcRY0SuNUYzj0ZCQTrV2
	NKmcvE5lbP6pxz8dmArtjmj5wed0Ao5B8a3+G5Wc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651507199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFTxIAI7/3AkTMGGfFMoCyzxTMNaguBKHVEcQKjhSHo=;
	b=fZ65CCtACd/c0ae8rySHv21dTjj+YZEm4BmUEvLDBejRNgFMe2JWLholxz3+N3sA
	iWhZpKpKrck0u5VQFOwWWejN4avydvbhDMQn2zGlH4+ACDCyfrqQTniiB+F64AYTefd
	TXp1tbA15K3AnAh+KYwpU1x+nLcOxyn6Nzbv8dE8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180857ff966-045d7f97-c20f-4593-86d7-db407cb1f23c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71dc8212883309ed0bed434a6e3d69578d6dc16d7b437cb84fad27d6571f23b7
Date: Mon, 2 May 2022 15:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651507198
