Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4E03206
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 19:58:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653076679;
	h=To:Subject:From:Message-Id:Date;
	bh=Cl3cJ/FR1Ulc1ttQY3G8kgQh5KQCogM/gn8+5+lyILA=;
	b=esJlvzn8iAKSOscGeUDcu4+e4wSKQ/CC1/rl9eCclTIASxVZ0NNWAGnHmwWQ0aFK
	sjP+jWhnAsHmt+TTFzVeKqQFlXQOeSCaGbgfkgqjYJ0hiAgCWgbghhq9qCVLohw9y0B
	Dy5pDZZQMipJF+RZUV3lTvmdzZe0ZCgCiavWo+hc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653076679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Cl3cJ/FR1Ulc1ttQY3G8kgQh5KQCogM/gn8+5+lyILA=;
	b=J8WDrwYHZm/UkOKvWsxqpuPthJFO2AvlzPa8blIElhYPYzK9wkqsmXlRn3rFBXIp
	wIpabnDPIr2bWMzUJ2QYy+3e6n6zKUsKl2QCilNjJdcKEnfM3YG90wyFrOjzE5zKmro
	mgFcFJMcSPJYE0SZrgFHNinwslyJvUb0TWtTL+0w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e30c5a90-68707d8b-cb5f-476a-b66b-4109638e3370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a49bae91ec5466bf8c2c4244da2ab1f34e910d597c9c9e861a120054ef69eff
Date: Fri, 20 May 2022 19:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653076679
