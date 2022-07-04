Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3AE23B5
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656927412;
	h=To:Subject:From:Message-Id:Date;
	bh=iUlcQuIhFh1rKTWPPQm45kgAaw5cwsnlywEWbD83mA4=;
	b=Gm4A5T8UTpAPLyht9uZKZAlyBj9X9zM4eOJapslz5voHROdaHDf+P/65/Kun2uaK
	+cmpAJOzSUcC9jXAiGik0uPFH//axH2WpoAXrWMihfZPHl6yYkRaXkYm6akgvw2rfII
	oek1xTCGWr5kd/JYFnMoAn4Zd/h7dky64UW1QJhc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656927412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iUlcQuIhFh1rKTWPPQm45kgAaw5cwsnlywEWbD83mA4=;
	b=IGzevPZzF1xt2FJ+wCNyO/272caEe79sPuX/PXQ7U75vzxczNimFfsV7iYDfnnZw
	wEyhbFYFIjEJOqZyU1aGzWFALKDF4a4o+VWxMFzCbsAZiuS9/ONDhCFL7yA+y2gMLR9
	URdk/zpPsp+87jXEzKiRdNego5rWCxdXDa5G1qqM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c891e00b-97dc6244-11a8-4cc7-84bc-a1812b7b9a72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf0471a861c3524412e2bf17b96901df9fdf41c64b2f8984779ceb59ed3fa7d3
Date: Mon, 4 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656927412
