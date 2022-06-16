Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5407929A0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 15:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655392439;
	h=To:Subject:From:Message-Id:Date;
	bh=/l+DSbsJFudfhu2Nx3ODyD9qdH3gi8q1IETbWLw2cxw=;
	b=JoCWQNq6heYq5jZzE8FJsn20B0YsrLUb8EHyNz6AKKMbCQVsAdrbBHU+9DwOxney
	j0lsHt4wAW/tocucEuTtEboYA/LRdc5nvNDfYT8OAk/Z+huanEnecyOnvhdMV17wyQm
	PUGvfjlToAP99Lrne2Qc0dXuKqZwmPdvx13AoS50=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655392439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/l+DSbsJFudfhu2Nx3ODyD9qdH3gi8q1IETbWLw2cxw=;
	b=RLF1KOJ8mdCWxdBVo9KRT7troSI00QtyiZvH0guWhd49CiEsOM3tiCS8JB2rU4yF
	/IkFpn/ptFGrMNlXT/Km0nUEiXuGS744Smp0Ak1/B3+mLeZoYrDxGCSHTIxhYCxlWLs
	qQ6RnTNTwHqYoKfcJ5INnl4QUL/fCIIMe69RVtn4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816d140bdb-4a6956df-a720-495b-8737-2bc90ef92849-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 420e9bd6883e81356ace1dbbc955736b4cdaf1e5d299db0f14b175a90b154e90
Date: Thu, 16 Jun 2022 15:13:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655392439
