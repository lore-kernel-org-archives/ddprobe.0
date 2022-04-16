Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F394A20F3
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 06:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650089998;
	h=To:Subject:From:Message-Id:Date;
	bh=Dq7rMpbKFU6cYLMlOccwNt2rw4PqysWepdLRZnqB4ks=;
	b=iTaFtDRCMPhwPsqAmaI3WF2ljEB2uYsCPuwcTePP4wOLPurIl2EexNfigtpJS6K6
	iso2Yme/kaYE8BcFYPfdE/ok0W8MBS532bXAvg4ANvtv3qpBcn0drVqQU5tCyAdWMXk
	c/zqEDBIRGBjOcFEY3eQwCSOl7FA8dY0MdBhFkF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650089998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dq7rMpbKFU6cYLMlOccwNt2rw4PqysWepdLRZnqB4ks=;
	b=Vp5DmsJ4H9yrx6OUY9G/BwzEtQWYfrF31hBzUtxqJuysBpBpiZW/h0AidVv48Oxv
	XJt2+5crpZA9dTKmIX48adDpQiK5IPJTfgK/lxhq75G/lB9q6lXLzZoajxJpThW9YPh
	ux+00NZVpKWXB4K8KuaZQkMuexTEuPE9NLmDJj/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180310737c0-413a0315-112d-437f-aec0-27727832cc25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cb1655800ea8946e736724bb3fb780d70a50e1cd0d6d616435bfe96a9e1094e9
Date: Sat, 16 Apr 2022 06:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650089998
