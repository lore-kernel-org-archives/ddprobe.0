Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6708B36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647906984;
	h=To:Subject:From:Message-Id:Date;
	bh=I0WMg4lPmmJQJQjjQcseIPtcbMWlpjxglhzCfhdS85A=;
	b=YfxxDG0u56APauZ5iGsklThU4MO5p6LMSVhXrVTQctPNEgHwD1QyhCa2xeaIcm1h
	IrH3xy8C/ebtOvB5V1PqOgSbNl5b6qzM+tUFv2A1lYpefyErDDGqIEJ0TkVqevxb8XH
	huVRGM5eEl8bzz7eEHF7pIaKLFKRALJWPmXEMKYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647906984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I0WMg4lPmmJQJQjjQcseIPtcbMWlpjxglhzCfhdS85A=;
	b=csfhCR+AlJ4a26RVYQPOEmaGqVaEd7UpqKwT4+EHE4WnOke5eM3oI/8MQ/UYzbwL
	KyCeyZRbKrWFw4UfSyBAYwSK8TOsmhz9fE+ze6MZfRzPMCh9jSAY3/T+68ss4z1FZJw
	Qe+qYZ0Pk58r/rD/q/vDKROZ8sqXcaiS1o02dfKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faee91311-c48f3636-bcb4-4862-9143-e5f960bbb031-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7c5acfae602122b1b6f6d7038808fce490571621098e4839ca22895cbb89de2
Date: Mon, 21 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647906984
