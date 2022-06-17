Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339EF7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 03:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655435579;
	h=To:Subject:From:Message-Id:Date;
	bh=Fg3uiFuOdF5Ep7RnTIpsQCQVju+o7q+Ya91Xtx/2J4k=;
	b=IxK8ZzVbdjIV1DyE6kvtzLC7TRZ76Tu2D8gjaMp92Wk/EgAH9rGwE59bH9lHe5WI
	mb8uJdlbvWU1BCszHEnYl+bfifHzzg6tEJp0IW5cXOlqq1+1b1jDdXXWLTbXtJq6Us1
	Y66d2oTbVgpfSoj46rOERikAt344rCpFUmsIyCoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655435579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fg3uiFuOdF5Ep7RnTIpsQCQVju+o7q+Ya91Xtx/2J4k=;
	b=Bc3Z27/qC2qKHs6ZUBrsZb/MCKDyt1UpnBQ0eMBx3hWZDWebS5EnRlccbkqpqv8h
	5U5HvL0PSs5SCyclSA9GoacgvAAKKpCcy4hZZYMZGp5+1RfGaf8vPMyYs1eeVtVbmzK
	UO+JxpK29UNRdGRnFwEDXoOheeEUmmSEaAdk11kg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816fa64f87-dc22a3c6-d878-4b58-8867-ca3f15fa8e81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d0df5533bd417e4ec4d391565e1a03da269b07b16035aac592295b900607c8e
Date: Fri, 17 Jun 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655435579
