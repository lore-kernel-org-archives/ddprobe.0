Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6065D1FB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647341484;
	h=To:Subject:From:Message-Id:Date;
	bh=PafxakDnL3LWT0cPPkKw/HB5yolncmy6tPGsjsv0IRU=;
	b=QHAzSzET4VDPNt4OWl7m/KtjkSguRtHUrkMxTCr2eRTK7OIy1euOoQLamJUcJNLq
	yMkbVjjH4v0EMJrJQQvneVP/hKVMvwRtpJlH339QWXOkC9dKl7h5uBVvZwFPBsGMq1O
	WtOcrkm++gQKgx55lyWag5IO1lcTB3erPxLhnW0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647341484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PafxakDnL3LWT0cPPkKw/HB5yolncmy6tPGsjsv0IRU=;
	b=CbPcdguHHatnlQlS2P0bW2fAQf9zhcQp9lH5zX5xLZqWsPbpQ+DpIRG3iyz5R9tO
	CJ0pf1AO8p2LPynDc5q6T5QS59r5dcFseiIC3w+4LsXqB496Y/do/4bxaQXVt8JQi0j
	F4F2fPIB86J0fGPGqWB8KPMXcpYOe27u2jHEMsh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8d343ae4-6f919d57-4a06-4e04-80b6-2f5a24be26cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a0d6337d699f0b4aa57dcfa9a39df798eb9a303e1ddfaeba67f1ee75a4c6158
Date: Tue, 15 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647341484
