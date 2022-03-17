Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74DCD7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647505584;
	h=To:Subject:From:Message-Id:Date;
	bh=x/PGjQahotAnZJDtLOOCj7+Dwo2oZ+P21uTYxIoCDhg=;
	b=TZ/1g7A6BQFzOaT7tCaER2lWBQO2GZ7GbHD0+cyyBhUbOxYxzknyogKW+QoKNgXB
	GY6NauE7YYnmnm9pyNA5Q8+cFdwsGiQZ+IY+jIMSBmy/XqopOc5NGpxI9MG+qSA+C+p
	o2ZMXn7N92CIR+sNB3vLOVi3WkcINfHCN0e433JI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647505584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x/PGjQahotAnZJDtLOOCj7+Dwo2oZ+P21uTYxIoCDhg=;
	b=eYe1q87QHpijCgWfCloSvN/LcPrkZTnVbuyyqmvieHvH5hbyWCRvurhmeHgvXzdZ
	83IDuWVSV/tehO1iKJ5utmzJf4nlmjnTHH4adPcdhnVv5qk6pPFxKP1bcMI1O7Dj2bw
	HHUW7g8ay0+fEIsPyfTBwu1k0PhRzouHrm/Bb0V8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96fc3271-db808fc4-bd6e-4033-adfe-0aa260076f08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6231fd22c589d9ebefd187842434266e0953706e81fcd4dda0a45c26e0b9695f
Date: Thu, 17 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647505584
