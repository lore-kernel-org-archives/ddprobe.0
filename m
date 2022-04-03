Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259C923A2
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 18:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649010178;
	h=To:Subject:From:Message-Id:Date;
	bh=CCiHuX/pZ+DC+stawF4MFJfabcQtFSJt6sT1ffy9uNU=;
	b=U7ljU+JqzeS+QqfITqf5oqU2RyNka4j5Qf7kuf3qtFMKFz4T8xTDCb2mZb/gNEJR
	NoWikXkEzoQO2Fh6MhyWNKUfj3YE6Qh0UjHYa46KnMgo9DJC0BHtZjTVvomCeZM9PHO
	/zpmCiYHe8quIA4OuoxO4WoxL+dsg6g98r908Rr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649010178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCiHuX/pZ+DC+stawF4MFJfabcQtFSJt6sT1ffy9uNU=;
	b=Te4CBwyZaxZa2ANbcG8+nKnNsv6lamf+Y42z6g0PyzI1y358acjjuS02ubecgcQx
	DcrP/C/+34gX+Z2+J3zPo/wt/AhSIX93KMbUa/QsdIYC28sBgWB4Lo4lsl5SDTOVXsX
	yqQ/UriWXe1U2RPd43OVP+qp+3oqZneLtbJQqEzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff0aa7917-865e7045-52a9-4cef-bdf1-1129d6eefbf7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13b855a08db03b7e2a8a6beea1b569efa22ca016aaf97aa1e9e78fe97033f6c6
Date: Sun, 3 Apr 2022 18:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649010178
