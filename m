Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219FA1FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 16:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652113618;
	h=To:Subject:From:Message-Id:Date;
	bh=N0V1OWjUMmPUuL9rxb4ZBqAcSFk45o4TqZbl697mHGI=;
	b=P+/p/TRjAr5rRjJBPELDkZQIbVnVRb2287XDhk6YlGWpsrq69azlWes3c04ZOmoB
	qL3hHAdN5grIQeQrgd+2l0PBvTMPquTfRWkr4tZGUVoWXblY27YE5Vj2EuC8TjyPXj+
	Zo5fl11qCEdQtou7DmnMLe/+DsB8CdYiqT1LvHaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652113618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N0V1OWjUMmPUuL9rxb4ZBqAcSFk45o4TqZbl697mHGI=;
	b=ibzPVbZYfhfUxRposhmuxTzmF3HUHDv5ulg1Ka8oNgDn8BZ1QQGhcazRLcyUQIXR
	QpXH5EkkelkO+Wu5qaAW4DvP5MqgCdLfhjCEi+k2X8yHaBntsFJrXcASkw9vde2m/8N
	Njub8zPHE/L4C9RvD21S0NTXSU1xVdyiWFvFwO9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9a535a7-d2f16684-107e-4fab-92a7-7e162225c60a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08ffb28e2bb9e40e94c092b6bfa624ae54f0c89249d4cd433fbe882b0cd25f6d
Date: Mon, 9 May 2022 16:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652113618
