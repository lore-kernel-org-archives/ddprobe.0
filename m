Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D6FE7A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659996052;
	h=To:Subject:From:Message-Id:Date;
	bh=K9xtJiMTYqQSRx0ptmX9Jq0sOV60fhLcR6ZipDlC3zk=;
	b=Beo5QQgfkv+cMQaovXOGbw/IPNyGdPk9WaCNil8ViR+xR6lOQ80aNZ6WI2aZHi+Y
	OlZj7TeCb6CDvwXYamDP1dJuboHUTytoF0QcpUKffZeQtPaEPaqgwPLuMRN8kps40UY
	oUzqgw9AC+liSzlcolapdwE/Asf1uUOHuU9zn77c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659996052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9xtJiMTYqQSRx0ptmX9Jq0sOV60fhLcR6ZipDlC3zk=;
	b=NLKVdZg3WM8qa7yMdfPA61DG32X7EtmRNshaQJqu09XJ8I2NoV1muJOo5sznVSwz
	+qlZ9yBFtm7N6rL4qMqjQkPoLRnMu7lHt6isrNJlGpe4OHFyEdzWGdJzymLhTgmfbQf
	DeLl4QZ/pPFy4ZuBKxiX9ogGo7vQVxG8kFSfsx/A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827f799c9e-2e1b4d93-21b8-4c06-b094-09b20e795144-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1911e531137915207b30be0f9f58bbbe15e0382dbd8bcdda4a4642393cc596b
Date: Mon, 8 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659996052
