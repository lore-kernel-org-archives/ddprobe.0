Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4176AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 20:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655411340;
	h=To:Subject:From:Message-Id:Date;
	bh=HXoF+mef9s37roimqhxqi2sTWyZgOZ5r4uK0p5v8Hgc=;
	b=USHuvVEl32UquUv4F/JLQYbCCTC8ujJWCqEc9PQFxzHrNTWmlgPAUh2ndsey46gl
	kMXgdIYXiJGx7e4oOjIXNtbU1tSR1VPSTzTVv8RFNid3iwlJ9Ofjn1MwUYlNTxk0KiX
	FxL36XjTDeDjwQWDYs56ww5Zk9gD+j54sWOKOaC0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655411340;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HXoF+mef9s37roimqhxqi2sTWyZgOZ5r4uK0p5v8Hgc=;
	b=Xkn/XgLE3WMWLGgPGjamc7pMIjC88HP2kh48WaLUin6pAYnNyS5z86a/kDMRVN2m
	jLrWw7rWxygqBcy1KgxG+Pl48cogz5X/WZAvn4+/CyUNxH9iXBiVNm2hYRd2n3+wRF+
	ajAn6pXF3DyL0N6qo8EXbPIr/sjMivBd2Mva5JOk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e346fd2-8630a16c-aebb-48e9-8537-096dc4549dc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b87658597658abaf123aaef452a24d8edd57a026ced4693428ad71dd0eaf586
Date: Thu, 16 Jun 2022 20:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655411339
