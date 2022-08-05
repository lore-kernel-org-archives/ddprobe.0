Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E5F7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659670252;
	h=To:Subject:From:Message-Id:Date;
	bh=bKb8bA0kV5j1/9QAL4CQWqL/VYzICMv/v9xcDH0p7js=;
	b=JK2wAq6LvOxhf1LFvux1bRVeL+HrHnTZN8ylXx7HyjBP1aYEJfO97Swa9vWF87DH
	xC5tYatR/ht3+/ZguV9yj7EAgAGCmrketA4Ma9SqZ0RzAxZ5QhlxM9xfuUBiaKaBqwv
	2Q54zvB/CElYqkFNUkBvyxNUFKwepJ0NcdCwVD6k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659670252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bKb8bA0kV5j1/9QAL4CQWqL/VYzICMv/v9xcDH0p7js=;
	b=ki6z0DGymazjo5Mgy15MFlaPvtWQUX3Xm0V5h8kXoGXQd9F4BrpnVKJ8eg08gRUk
	X6fXv7rgCd9WP9uXKxz1zh5HklZXCQ7trqP7hSH9ycMdpmG/T2SYM08D4L72MR/KurT
	6XQl0dTNhLM5sautepFV42tF8+7t0aHWGnlzqAUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826c0e4c33-a452fbad-097b-4bde-a8f4-f4062757e871-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e30d374e84d3a6c815e794a4f17ae82b3d2f93495976357e4d030e379eb7a857
Date: Fri, 5 Aug 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659670252
