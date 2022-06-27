Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C5C17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656295612;
	h=To:Subject:From:Message-Id:Date;
	bh=c/R9zKIwp3BVEDFo1JAwcE/NLk3oK/MhwHFrNWVIR54=;
	b=lQFBGSUcujlhUypCvW9jcgWnxkVF3xPzAjcE6dtnr401pQoWOg/4DOMjnUSftB+I
	ex96LyG8OOw0Hrj7GmqthiZdl1xLuYneaj2rUPV0SKE26oqO9KXldky6FMI9fJfjDsk
	9oBNzSMepMBIO/Ks79u3wirhVepqke+wwurfl+4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656295612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c/R9zKIwp3BVEDFo1JAwcE/NLk3oK/MhwHFrNWVIR54=;
	b=iGOqidzK/saPf2BppGXq2/jiKm3Uv6vh/cVriJsrdppQ0zSLWOLfmQ/kICL9XMyg
	qUoOrCs2SbgCoHmYF4Zpy4uIoVCIkGPA2xnLIvGmsTKfDFO4NDhq4SJeOM+NYEz473Z
	L5E+J2J5mHeCJwj8mKbceGEkSY1eA3M6995qXcYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2e95f9c-0e683ca9-1fea-48b8-aecb-40e5af3630ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9f9042828e10423c489d66058ad5dad654db9cd68817857ff68221d14aaab077
Date: Mon, 27 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656295612
