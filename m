Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F203D1855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 12:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647259585;
	h=To:Subject:From:Message-Id:Date;
	bh=dXC3M1nBdc3TRVPxpDJVrneqBWqv+QMay2ca/LrkfRo=;
	b=N0JeFRgvEEaY/sno38j8enpwm68obiHOGkLHCrFyaVjrfDTHwkuYlWVAvlZAshKN
	3PEP3777sxgX4c4uW8MXJCcPBfbylqpoVqD3ryc8vMM5QU4UyTzY44boUZTmCE6VX2X
	7BdIIIK0NixB/WCbKrLUAUH9Lq7M/H8wvLG5aPUU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647259585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXC3M1nBdc3TRVPxpDJVrneqBWqv+QMay2ca/LrkfRo=;
	b=f2bpcYNKFGiBnCsaDrg1O9KmpYFklJHh99AXwfo8Mh58AAx0dbU+WkcxfOhL1F71
	bYkOlNPq8vjwwviG4DwDZhZUaw/TDz0zEp3YfnL7IgGtPUSvqrf5PXpK3JRfQB8N9aE
	ebh5A/VaGAJc3AvhmBpGRzZ+WPvlrzYhu0kExKoE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f885288f4-5fe73968-1bcf-45f4-81e2-03fc65426e38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd3dbc215edc958e28e22372d5883fda6d9e67653ece13118d29d4e2e78ddd0d
Date: Mon, 14 Mar 2022 12:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647259584
