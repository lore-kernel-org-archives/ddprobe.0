Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153694687
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 00:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648946698;
	h=To:Subject:From:Message-Id:Date;
	bh=enD9cTpXLUcUwM1Vc1yJn+N7HIjZv7smCaczbkPYeHY=;
	b=MnoGr/n0SQ2eP43MOz+BTwcicHAcEFdpGojhJOcGwINddFuRl5zrJEMNlrmZv7FU
	SdpWVdu2f643Sqg1JV3PuBZuA+Xu9vKUokiRhh0T4C4oIWsOKTocRptQn8Csv/JHHq8
	QBmnkp1g7GeT0gZsvQ4o7474U3IqDCJ+B/4wfi3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648946698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=enD9cTpXLUcUwM1Vc1yJn+N7HIjZv7smCaczbkPYeHY=;
	b=d4lABRCqXKwQ624k6sn6htq34M61AkeUT44/XjwRtWgZ+Yx0SzRZGyWovuFoy+Zr
	OzRRdgAYisvDhckkuzFnzmpZjRLoEIM+xhcX5YAtj1b8JxoYTnJUBryey7bVyimRTrq
	6N8xQ+SY7YW1HKoHI2GwDlZDWizFlSAkWLo2K3UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fece1d88b-36d8b7b3-fe94-41e9-b797-0155da2f3986-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8beef4e73eda83fbf18e696cd97c78e0c27878ed362ba5bcd164a2f6f75b3c06
Date: Sun, 3 Apr 2022 00:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648946698
