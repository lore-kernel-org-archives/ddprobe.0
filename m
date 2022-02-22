Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A55416937
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645566685;
	h=To:Subject:From:Message-Id:Date;
	bh=4eqngb4vhyzxSsZ7kuXlqXLVuvaySyO/kAmJyRprdb4=;
	b=Rk/n/JNzUb3jQNkH/o3CqSHhyMwZf7dD/CtiYnQGK9VEsBxPfoEtVIwInoBFI3/M
	o4dF+NcyLot3LEYlUUWYYr97/HJ7EVCNvLImTH6M5OouMf5v5/7kHKAW2lyv+lddcCR
	7ASoaF9rNFIl4dHdKkI4+3KPwmXhZ1R49QLsswP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645566685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4eqngb4vhyzxSsZ7kuXlqXLVuvaySyO/kAmJyRprdb4=;
	b=NVMlMvXE1t5EMMga9IXsP4Js/TASqa+cnyJZJIrpmJZaBMaA+Ng810uKZsiDusIH
	LlSuB9lSEkozAallgHOkTNSIiRh6kFDc3YfRT+GvvUOBictbUEdBrstmsTl2xAnvbFz
	xzpz7xHyF4jB/uO4c3OcoMcqQBvQ0Pyc/OfKfb4U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f236aee8e-615263e5-26c9-4293-b382-a39333231cb8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e75206674fdf833621f909f78b928421c967774d747728ed4b5ae59284ba5d22
Date: Tue, 22 Feb 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645566684
