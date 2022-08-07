Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74C577C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 12:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659873653;
	h=To:Subject:From:Message-Id:Date;
	bh=QHlr/U2J6SlUXNMnnLweqa8FZ7QEU8KK8WffvINypDs=;
	b=dAaN+EWJXaLpj/RyGFMvzDRqWl1x3Hgy4GP1K2uWb75qNAdjxXl0iPTYnqmO7uCK
	6SuHw4pIAwzufg+byu1PUE3as6bhwZBgtcJbqDKZwPX+kzHpa1c9Bi8GQ/8dRkd8KuG
	cE1oGe3LtJQ1cErmFSDZqD5VemMO2uloQTOfHEGk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659873653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QHlr/U2J6SlUXNMnnLweqa8FZ7QEU8KK8WffvINypDs=;
	b=TCB/o63qsNwrbXKJ7AvayhJlAJBKaBkohc/H7AJQhTJyq4i4Y5Imo0o2N8JAUsYz
	NAPyMvcK+wxJhuHTk/4k0yXjse6ziSuxeoPGbHNyGNfGKHdIKICy23H/AmB3L3pBRFX
	yZlBFZDLSidBeZBXnaiCyKocS+brNKOKwpdOl6Hw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182782def46-b2d7a3a4-e234-466c-87cf-3e318e7f4cf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09b5961f06284a6b6490961d815273b1107e77514cb39dfd2b581ad439cde4ea
Date: Sun, 7 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659873652
