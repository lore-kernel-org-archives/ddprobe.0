Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2500F7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656447412;
	h=To:Subject:From:Message-Id:Date;
	bh=s2kFSrxXym9nQIJP04SOgB8Fgmm8a2QrNQYVCrc+CvQ=;
	b=Igqnc2A0a/s1kTOiHNFuEXEtldob/esAKlU98IkcuL4ffHJRrtaoe9msMyf2ZYId
	6unTxNzRMg0xbcsdgZ6bee73uVJ3G5DhY+KJexRT6k+PMaO5a4DfaijHs9mp/l4C1mk
	keuV0Mq0+OrQNuq/3LzLiaywJI7mg8WZuTsm/nDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656447412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2kFSrxXym9nQIJP04SOgB8Fgmm8a2QrNQYVCrc+CvQ=;
	b=Hu3NFiC8G07G17FwL3h6q+9ufEkbEWArcRObHF/wLyJhvAIUzNkRwQgJdS5wtr1x
	ib5krBbBH0fpdqKRRks2Hk4lvHed5/Q/bUGUiQzAffRK6cHie0yGQjpL6mt9JoJGxix
	U2BMEwIoKxypT8udO9IH4S5xfOuTQmbh5rUbe3xU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181abf5a845-72e78cb9-0f64-4973-b35d-bcc1205712d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 487cf610f8761023f5ae87f618764542dbee9287d78ee3725b0bea8e6ecde081
Date: Tue, 28 Jun 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656447412
