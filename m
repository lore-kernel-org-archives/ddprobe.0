Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 652395EB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 23:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647820584;
	h=To:Subject:From:Message-Id:Date;
	bh=YuBaC++Cz/NepUepNkMvSOCLI2aZkYtfaUbNmtSJkSc=;
	b=XhxSq1rB5slNjXU7FCZWXwD0S2GN8BLD5VSow6UcjYL6RORo4TXh/M8OsTfPLXSo
	uO5IfJOa1rIZDIYY7BgV+UHfRbz2Zko0PRnrktDPPgQwZy82DBxIlB8lyzfZqpYg8ol
	OyetOpdGC+jUHxUiyL5iF63ZA8tSnvNS2wlHLXxk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647820584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YuBaC++Cz/NepUepNkMvSOCLI2aZkYtfaUbNmtSJkSc=;
	b=WvuCAxx/U2zp3ID74AxNDs6O17QheK+8V82LDCYmN4gRwtiNT8KkAZx32cbhqFhn
	xZrsJO7/rqBFj5c/roJGTz3X//+0BSW0MnqkYDt79qBAAgZRp2jawX08MllIYaXCGdh
	TLC5YVZG01Eung6+hNTfbIFpi7y7blIMieYOHEmY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9c2b735-bea070bd-d334-4d01-a360-611c9f67a50c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e844f4b1c2e90e2d36d9b20dc021c8c3849f78872ac8d18c13ab189d6367187b
Date: Sun, 20 Mar 2022 23:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647820584
