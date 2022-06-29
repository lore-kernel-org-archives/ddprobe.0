Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BC6562A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656479212;
	h=To:Subject:From:Message-Id:Date;
	bh=iYIGehJRUtuXsa/RFiIGj16x/+TcRyXBLFgaBKgjohQ=;
	b=jZ3BXENJaZAm+K/co/fUhZPMu3MNZQuj4OJcfXrVksE6TWMFUD2wF8NWrsdlHcy6
	S7o5bUZM2Gxi+J2gKNqxGNliA/ccCVS4Eze9UFAWy0eEeveGu3B39Lj4VCYnpUseTZk
	qlmliQm7QUUG3BrsV1lE0Ylw/I1VqNaOSxjh6m5M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656479212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iYIGehJRUtuXsa/RFiIGj16x/+TcRyXBLFgaBKgjohQ=;
	b=dG+9sUuIqhhEGZXhs/ZYnYjX8YJ98sD4pI8aRyS0yxkvQxr19GNmtyr1wq+Dt5UQ
	v0om0IUd+w0iUVP0lecXci2TVNl0WochgYzopZgWYn+1MfWMLTw/zbCxioN6BI5fIko
	wZFr8447trHmCzF1Ayb7EMKzGqgqt/bbPn8Vgo6w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181addae31c-c1d705f6-f42a-4483-a5f0-14f48c7a2cb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7d54eb283e3ca27c4fc2d886b9131c6416fdda12a63bc82908ba257f16f8179
Date: Wed, 29 Jun 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656479212
