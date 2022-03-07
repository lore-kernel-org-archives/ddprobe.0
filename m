Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F133B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 14:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646664085;
	h=To:Subject:From:Message-Id:Date;
	bh=RqpXyYwv9z/jKT87RqiPdvbp2ugP2psMCV5UULZnk9w=;
	b=TH7FP5PcMT74/ClR2KlD5O/6fiJQVdGg8BV/Bfz5L6D6QnS1CROJKCIAgWdf+KRS
	im5hGpAB9LY4DEHv7YWCfgGKUCyNQ97NdxmiJ3i0HzgmDXNk+cIo5Pwkc6hWvzuEMki
	e6mpNfEc/+gdp7MhEeWYS6tJRRrdH/1jIwlcOuHw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646664085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RqpXyYwv9z/jKT87RqiPdvbp2ugP2psMCV5UULZnk9w=;
	b=JQirdlTelkootyVj7piAg0ZiJ7FMGhkm4NSqSTlP7SveHrO6fU3p19rS9kb6Hi8/
	fMmzmpqUEXnyOHm+rcC5pZV/PxRU1Q1IvONrTNzj9NTiSL2nup1I4z+9AgQclEKOde6
	BVvykTRSxgzRumaB1U9XZGTk8ScTZgDUrzpTwNVI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64d3ed36-196f8b54-1020-475a-80b6-d18cb64459aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 732d25d8f517ebb0fca4ba084aedb7c56a8a10ad62c65d29a82cf030df8d75dc
Date: Mon, 7 Mar 2022 14:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646664084
