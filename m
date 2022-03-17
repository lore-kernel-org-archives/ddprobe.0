Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B72C87A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647502285;
	h=To:Subject:From:Message-Id:Date;
	bh=KE2hT/QTpa/AxtATyGyPi0MJKblzPxmcasE5KjBdfsM=;
	b=DrYQr1gbKbv/3gDW/csgZvH2qrqo7bBsPgMwSY+YFlewTvmfsFZlpHWGE2KPjMkj
	6vRv9zr1TflPiaylFjvJrAdd29b1EdeqvO/IRff3JuC0hAyog2a4QtvXzfmWyuLtDH/
	ZAkmm7wvE7+G2cCh2FIkzuzyqdCoNrph5Mi9bdEU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647502285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KE2hT/QTpa/AxtATyGyPi0MJKblzPxmcasE5KjBdfsM=;
	b=MA16WrAIkB7ttMzWi6xYmqvPBEJ25rZj+yIxurD9IwUka/XN/27D0kgmo5tdxKta
	HUKvEj7yr7RZ66xuCmWt5IDKeHw7Cb4MwjcRNPlp44E4A8kdue5iOpAYYitX2ugROVV
	lqbobA++BrhyBN2PsC+2139wZrSipKOROlaA1WRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96c9d7b2-b2cd48c8-6aab-4a74-b4c9-ec2b81b09261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 095246a66e266a208959c5a33f55aaef09c3040b2065c85fa82fe36ade6ed564
Date: Thu, 17 Mar 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647502284
