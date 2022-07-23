Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A7887E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 05:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658555212;
	h=To:Subject:From:Message-Id:Date;
	bh=bi7DDuVCYcQMbWukDnyRcWyceYGxhuF2FMPJU2xKxoU=;
	b=VIlBiX+LEMD9CDumzmjZ1bm1eqSmMii/qwZNPMisvHnuX+tiZVcd4FxV/JsQeQvw
	mgYiVNK6gzFWUMH6V23yOqP8FpQ/4J6KnpTrF/OwG2tiuBu2dkSnL7YmKRx3S1/15QK
	r+oVqAqORXUyU5opbsacHa88ae+e1XcoXFPVbBnE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658555212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bi7DDuVCYcQMbWukDnyRcWyceYGxhuF2FMPJU2xKxoU=;
	b=klh5D6zXKxEMNVO2AaYgvo7g8OcfvA1v4DLq6OGboyN7tn/EuepMb2r0a67JQNCL
	l9Wfq6p8ixNky7QtjkrybZ4A9rYGkIaHLgoquW32HKFmoj9IUsbCuTq5u/iRKs2z3xb
	kTA/DprY0D1ujO6FFElEuqCJyIzsC8nWrtTiLRoQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018229982212-8bb2667a-4c1d-4ad1-88f0-542bed9fad48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5d0dfa15df7aad705356515fb2739589e209ab36d08db1ee6b34e9d98a90f5a
Date: Sat, 23 Jul 2022 05:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658555212
