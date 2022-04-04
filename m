Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D63587C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 03:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649041498;
	h=To:Subject:From:Message-Id:Date;
	bh=lx//0+jy90gYyFUIoyC8Jy0k73RvECQEvTgQObNixu8=;
	b=FyXrSpCry+zsdIaCzrCEmCCcMoY14OrDCF1Up/3TLCqsHp2fM/wHsmyKbOz3YDhj
	nI5XRi7TBp0c4xhWCzRd0ooFmfI1PoqhiddegjO7MJ1rKXGmZ3O2JhdHRmh02VVjIrn
	v3AD1sPAKWgT/MJj9PvBC1CPEuHRtB9+7vzp0AFs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649041498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lx//0+jy90gYyFUIoyC8Jy0k73RvECQEvTgQObNixu8=;
	b=boI4okkImuFmnvVu023Vw4k3jks5LYlzrsM0muMAEpVjYTyKPseJ1X/yrIhjNaBJ
	JEvONBIewo/67mwTDxpXpyo4M/ZEjRqoPXW2d+Fmbrl8kO+E4JaLgy4XWMlZZw/4zAA
	IROrVHCKSFlQPkSizOXpBFme5Tegabu+51N8iXp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff28860bf-3ada3e9c-4aa7-4ac5-ac7f-db60954e1cf8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c2ae2bc8b6edf60cc1aaa68fcfa3a22d967d74957b77dafe8e4943619eeedb
Date: Mon, 4 Apr 2022 03:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649041498
