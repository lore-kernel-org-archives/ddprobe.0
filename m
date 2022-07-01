Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C2F10F1
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656665212;
	h=To:Subject:From:Message-Id:Date;
	bh=QCbh7kuZxe5fgPoRVkHZ+Tu5IrfewJtESrShaTRqmbQ=;
	b=e8RS540qMDvT6uG7NiX+hFGrfjtcW317SpF13Ig5kl1My1pNHv+7jFmly5JXMkiQ
	DS26F1t1exIHiUGZyOpEvwmPvQvm1ozH4LYd2gbYRn0czeHYg3a2knMzRmJeUgX4Qil
	+JNDlUwCVkvCpdjNVxZAFfgW35nWMh07yk/cs4CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656665212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QCbh7kuZxe5fgPoRVkHZ+Tu5IrfewJtESrShaTRqmbQ=;
	b=OuRmAMZ1iLuQN3rLVURo3VT9uOPYiiaDtwHtGCLL9zYX/eUAkltue5q8GB34x9DR
	gLOajLNtstfRyjlLl76aXz0CvhDSFJhyyUWpcGYtyNmWH7hYXH0HjP3Sl0U6/DMla6q
	+UfCp6vK9nPuCg4PLzhzvyZmmFVKmB22s+PvEgqo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8f10581-d81d3c81-598f-4754-9f7e-2b226c0825ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c26b522e1b0e6f80ddcaf8ee1571a06bc3c5946013b3b7362505674aa051323b
Date: Fri, 1 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656665212
