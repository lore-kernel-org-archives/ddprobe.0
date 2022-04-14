Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD815A6
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 04:39:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649911198;
	h=To:Subject:From:Message-Id:Date;
	bh=iWpB1pvHXOBAenXdmi+v7/QOFfhaN5MoxtFxUdLetXE=;
	b=J3hQX6nz6fKSV7NIE4f/g5kCxUc4Im6RGgXfnQS/kjlSNUj99c1Hucri2hZvEfQ3
	+4ZsLFAqZWKHyrkYnp9pwaxMA25629zPx4+t7WkFNKO9WFfm0SHD7pBv0PkaDQVo2gQ
	gt5uyb53N2QGNAOiNygGFgvvzMIB43SAWQZ0S/ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649911198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iWpB1pvHXOBAenXdmi+v7/QOFfhaN5MoxtFxUdLetXE=;
	b=fKnnMTp7fbdES14KVIbJnM66MMyRon/L0iTGMeFQdoqWENMyuDa3guXx2xHL3gfg
	NZzTSFaGCpH0HOEiwPIxEbsaS9I3ybAnXKl6l5v5C3EkJu8bp5+1CM7+Rh+Lnp7qfE/
	7BHu7YmKJA7DnzXe8QlYWRG+GIPrhAQKrc7Pw/q4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180265ef24e-0713474c-3a03-4313-9dd6-c582615ffbd5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15da658274aefc6a7a26d6cbf79ded10401612a59ca10e3db10781863ef4a44c
Date: Thu, 14 Apr 2022 04:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649911198
