Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E2A323A1
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645850784;
	h=To:Subject:From:Message-Id:Date;
	bh=BKKFk4u1CqyrPkRzBVJ0sX/4UCGwytlMUeUTLTih0gk=;
	b=JnQi3EqhAfTw4rkkJAz80sgtgviPcL80cJcqEK1h/gM5wnE7tHBsT/pRdpUDgAH5
	GHuWwDh7KNac35Kf61Dj2V8SH0mqD4ZU4hYJaMHxeVxlssf3CksR2FdDlJ1wcBpCFeI
	BZnf9I9IQkk3ER3kgTOjoCYwc2e6KzyBijHkRADs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645850784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BKKFk4u1CqyrPkRzBVJ0sX/4UCGwytlMUeUTLTih0gk=;
	b=X4oKVB2b1kIE9oh8p/I5BtOoeUNA59LnFvnm4gRxu2OV58Siqqt14jfsMEooGw92
	9XNgnqEg5G3K9geiPg1bM/22AN+v7VXUp5s7ETBO8XoTB/x1jbk7sJlzZLzNkNw/aKb
	Lc9D2IHCOgkNgD+qHgiyOFGRb48P3oawxpFX8XJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3459f3c3-6221bca5-df23-4b51-927a-dfceabeff151-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10718c3853fac23afd9c2a3f8fee7b0bf0b3f2ef74fed3ba08bd93dd52bab02c
Date: Sat, 26 Feb 2022 04:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645850784
