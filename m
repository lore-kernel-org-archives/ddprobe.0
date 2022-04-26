Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FD864A
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 22:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651012498;
	h=To:Subject:From:Message-Id:Date;
	bh=dPqjv0AVcRcKTsHE4wuVCcG0h5FdkLvHg62PZ5itVVU=;
	b=Owe+QjWkD+0R56CTUDr+ZCxBhhviUfPJdqwqXkC1aqJG2oZvtCwccvs6UIYec1qK
	ssSpKxoLRRLry06uU24hnmk3bkyUYabq8p8GQAROi3WPewBKmWZiGASyoS61YGo+5BN
	KAMIpXb2YJI5syLMVDF/AzDSoeVAjLYAyJTGgz4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651012498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dPqjv0AVcRcKTsHE4wuVCcG0h5FdkLvHg62PZ5itVVU=;
	b=J+eOIs1qaa6pyyU2ImiHSrYUX/Iss6x7egmcOdN9BUyxX4bHCZzqHfCf/IzjjWw9
	wMnSQT/zLHCq+RXNaR4fMIs0ujWXefTboTTOxywT6oWkIy2sxbrWKCN173I6ekqShvM
	RZ5pqwSBAlfKUY4Hh0ydEXa2qVaHUBGtm+XiI1WM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018068037355-05bbe1d2-0b6b-4b66-ac23-838bdf13cbff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af7f0c9d4a9062e257adf511cf8ff33430865e00ba120070dceaf37b9542eb44
Date: Tue, 26 Apr 2022 22:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651012498
