Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86C1E7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647504685;
	h=To:Subject:From:Message-Id:Date;
	bh=seC3uOF+xIwPIlFs/xtdPVSn3BFu9ma/jI4h9EX7cDA=;
	b=b5oCNGOm6P3cFZGBGkaaAYrkAqFVWYMSnhN76PtCHm+HvDOPS31fd9MvRt804dY2
	AqqM1F+WV3lxwbs6EunR9BQpXPwbGotZzCJZ1E3E4iCxZCjlZ4sHHrHBhErucGGKTpF
	GA8b+/RuXynUGIht4wYcFaiN5I280sXKRv7EAcQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647504685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=seC3uOF+xIwPIlFs/xtdPVSn3BFu9ma/jI4h9EX7cDA=;
	b=VCt3cZN6qJAhcjXA0FyvrQACXkv7GfGJNLZjXoXknExG2q7n5Ss+ClifXa4dcLrr
	yp/znVVvSrApemIA+oGftC8vtJLbPXNbevjPM3Vpd2gPzb/oBsMlk5V0NqcDSGAG8ln
	aZA9JkioRW0GWUyA9Y5vJD9lo/dhy8gMfT9XXzTg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96ee77a0-9405687e-fbf0-462d-a6d9-6e6df437998c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d9e352d7355b6f67d0bebae653595fcaac4459cd2907c8c7f4e91a7b8c7b7c0
Date: Thu, 17 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647504684
