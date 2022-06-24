Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F35D3FE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 22:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656108412;
	h=To:Subject:From:Message-Id:Date;
	bh=COnvTeE59Qc4/axF0hWln8N/juDxe64igBpMCRWndRc=;
	b=i4FseNrgugaSLV/UP1aP0RYU0KBL9SH9gYWuI0n1e330Jp+5AqK1pZbvKscEdtP0
	C2aU/dUIrsJeAzXDpsXvRn+aj5I0XcKvsau6uS08kmj2p+riJ3e8xMptBsZBcAiGwpw
	AmMKDrv1q+PkI6khkSWYj2n0Ycn2UA6IjuHM91Rw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656108412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=COnvTeE59Qc4/axF0hWln8N/juDxe64igBpMCRWndRc=;
	b=PvASzCvVtzsWsG0V08wTnJ7kFeOXD20XTwuGNFFkwxcJfNQKpjcQ2j5AOuntVVr6
	O1fXt/p8YRUm+O5sfr6Izw8xTuM2oWx9foalJr8cQInj9Lm/ihmoQ40RsC2omitYTn9
	B5QC411cqk6rpKJ9svo4TuVrsa6/2oYfQo7BKMNs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018197c0ed8d-0c49aa7c-8077-4bc0-a529-017ce0b75ad0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de9600bc37110781898fdbf4eb5fabe3bcef22d1381dae9203d8fcc31db3a5cf
Date: Fri, 24 Jun 2022 22:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656108412
