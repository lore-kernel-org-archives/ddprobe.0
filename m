Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE491FB7
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 07:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657524412;
	h=To:Subject:From:Message-Id:Date;
	bh=zSLlojBWC6JBrdjISWP/qLI/38itlCU4fNfXmB2vfks=;
	b=FjTpp1nCu2mzlX2LVk6WVEykSRWCfsl4mAfgdlf/OyrWg+sL2OUUGtt35/OMuPBV
	8tbtdwNJX67QEG5lrS8Nfdry9XStoprhCfO4yCHTY1Ts1lPhfz9dz7NsINgtv4O3wyh
	E0YfcBUCMjaH+KQ+9Qx5fwhaYTFi4dSwbkPfwORA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657524412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zSLlojBWC6JBrdjISWP/qLI/38itlCU4fNfXmB2vfks=;
	b=U1UD00s8LOHX6VH1jr/7x2b5oEzTF5nT16PVjiQEjJvrfO99RiQw451AE5Wd6TPH
	UY5iX07nAwirzrlUcMtfMMD2MXakzfpn6ODfTpFLmXj0nLOJS5+MDxH6riSlvmIqdZ5
	aUHsVN7u8vZOVLRLEJWi3zv2qCh+SilqY1nN+ky0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ec275fa8-e48c54a5-0509-4623-980f-75c2f4205fe8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d5356a869e55a718179d21e481741ea9220c8714b549b7b429f37a136a702c1
Date: Mon, 11 Jul 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657524412
