Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3ABE33D1
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646226985;
	h=To:Subject:From:Message-Id:Date;
	bh=FHhItByt2fuUQ/vFX4c3uOVyTKlY+QniIc2iCUL8tt4=;
	b=h/IJigbN0GM1SsZ/QeDNxGcnXk0hpwQZI8bi8E1DveYS0+QlK/iittkmFTlQOsxV
	QBj3cLpeR8eiRek4cXA2ID2ISjouT9dXcoqqaE7qMBslG8IcEtFKaY73z/trR9I6hI8
	x1w5+ZMj0mACJPvaktbaqI64SOHQEzBnnbOnROF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646226985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FHhItByt2fuUQ/vFX4c3uOVyTKlY+QniIc2iCUL8tt4=;
	b=BQ+onR8mcd9ywWfAtMzvUqxgdrS2pC3Ja90p2SgDyVTL2EsjR7syGZKmVNvOZEvD
	YLa0/SgXIFXuxvbOAzJPaJTRJ455Z+qOCaQmTI8LgT+4uVlpOUD/GQ/rwkjzrvzEPF5
	WZiUtD7YSxSGDLn+zByrXmGSHanlb9prcUiBBWV4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ac64f4f-292c8125-2dd6-473c-88d3-b91dba9d3140-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51cefd1f83cab4cf74e9ce0712fcc9a5f0390601b45e6961355cbc21320554b9
Date: Wed, 2 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646226984
