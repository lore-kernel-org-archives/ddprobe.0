Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C70EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659775252;
	h=To:Subject:From:Message-Id:Date;
	bh=lZwuWu+tCJxmKQT0maP5pNgrnlqUQu2J/fotngf4+yA=;
	b=hE7a2v0VwQdADTcjqVO8eZLI7sun5gqXN3cmOa7jw/KaaFM9yYd7UbGvc+LSDrth
	yokTyWbVyMAYhY4BFDetXaXWqODmF/gAG+zMV9Ww60z/7TBALn2A0jlislztLHlvzz6
	00RFVC/hx3bWzOo0k8HZ1uGhbG0lfIyr7yJZ1OjY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659775252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZwuWu+tCJxmKQT0maP5pNgrnlqUQu2J/fotngf4+yA=;
	b=Qt4zQ78SocRyj0imVkLDzZlJSD0EPYEU5kt2+pi4B+nVJpTSa8k+sZBIq8EKJ+1T
	drvmdcEmkWqmtugcAWOTyn8Huf/gUNXBVna2cWJIeuGaYrkQkoeDgdKCZTP9nN6mA7D
	QgFrjIwsY6r5keRFQLRhZ3vn8rGQL9xGMHBAktk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827250785e-bdbb7129-91a5-4018-9add-54c69bd6a4de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0412a8fefc09c8b90734959199da812af21ab2a612695c309be6798ebabbbe27
Date: Sat, 6 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659775252
