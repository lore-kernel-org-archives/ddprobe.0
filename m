Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E6910E0
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 14:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651155598;
	h=To:Subject:From:Message-Id:Date;
	bh=+WBwFnH9c2iSL3LKVjgmOrwCl/BN920iHuMA282eo3A=;
	b=Ijpzry47naLSFDk2uCZBe4YUqibmDKXybOs1+qWeh+O3DOQzlv7Mgb4+k5kvhFnd
	At8nOMrcjzdip6b27+dJGbvyrt3eEonNUkA6LODj44fYNIfZr0fZBGozX7DnlXAgsXu
	VAfpXmroi3shLzMfldP09HsavIbKtDwBMz5Mppas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651155598;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+WBwFnH9c2iSL3LKVjgmOrwCl/BN920iHuMA282eo3A=;
	b=Y7bss6tYxAzapDNF5qlnO//9A1vaHCHGYwvadqIiCZ0GlMe6Wvt86LhXsvFzxY7K
	TUGpMMD8JOaaFz1kZAszuD1ftx4Qx9sKzFSTtf5UtLj9g0CNsypApt9piNFlqb/WLax
	Vp6SXb3B54PRitZJF/wbOAP2oEY0NHL4tu2/0/KA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180708afba8-3e75bbc0-0395-4777-8d56-992e4b06ef4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3caeb8f86025cc684eff5640dc74d3e83f9c704880291f9e1141ad66788d551
Date: Thu, 28 Apr 2022 14:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651155598
