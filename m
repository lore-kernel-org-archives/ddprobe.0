Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F210C17CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656292612;
	h=To:Subject:From:Message-Id:Date;
	bh=5b4gncRM+InX+Nas7YQT9NMAN29Ikf5B/yiXeZa87N0=;
	b=guiEd3h4ZYC1d4hmI5ZChohUTKgzVQJ+J0rVRewLxyng2mLi0hCnnNFr9tpwPugZ
	1NFXGnRgbuVT6JtkPeVChESZs37nXvwNQdea0PQc3HhVal86jhnEobyZEAyAFZ/QMK/
	YcAvbjKmIk7eYKc5HKA/5h1SzXnHqw2tyAActOug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656292612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5b4gncRM+InX+Nas7YQT9NMAN29Ikf5B/yiXeZa87N0=;
	b=ARkaszGlcd1nvaHW635KGXJa6yu74jskkwBDNFvXX45sIuMPLLZbaRJFpc41rH+V
	kLnmG0/HYkHbhhEzFs9D8deCf8o1sWbfdaNNHvPx28eDYNyIqW7/LalZW1rEtC7ATkS
	oe344ouwnhFfL7JAB0fQknhbLFbWXo8vAHkMoORs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2bb98d5-b4abb964-6b9d-4bc6-aa2f-4df31fba48a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa1c2e812acb48a82bfc5cefe9ace1a9e6460e75adcf65f4875d781c3e1abe12
Date: Mon, 27 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656292612
