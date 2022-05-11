Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1893218
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 22:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652308799;
	h=To:Subject:From:Message-Id:Date;
	bh=nYg8y3ZJFNvRfu1E3ChmpzrU0X1WCQZIkZDLKQT0SJI=;
	b=IMZD4wQuAvfrlrgpAXuDILqcorF9G3C9QzeTtI9RGnDZDuT8CttB3BXlopR7zDQV
	WowJHvh53uGEI1rlP1LT+jpPfRzKIaNkU3y1dpJlnaA+/dXAePVqx3xJr23E8Xp/6+U
	nOPXP7GEJq/Xuw4tw5sWMaBxMvU9Vc6BmlsTt3/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652308799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nYg8y3ZJFNvRfu1E3ChmpzrU0X1WCQZIkZDLKQT0SJI=;
	b=Fw+cNhUjr7K0m9RGGUaLg93sl0LekRiXodcsmQIxUL6FP9g6wsrU2DzG24YACG72
	kS4ROh64nGrutDjNgLI9M08VX0p8FBh1+HQ8BD/pr87Lp2djwvvCnK/CmfVPNtGpoZe
	bsD+4mtJ6RA4ntscUVBfjAvQxJFCrvcH2oM1RgBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5476f41-6aeda0d3-7e1d-4d0e-a73c-e2cc4111c9aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b474e89adf497abe8df825aa7730971c035b84dc89c6b6a14277971f9a826511
Date: Wed, 11 May 2022 22:39:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652308799
