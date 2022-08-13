Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 622432F32
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660429252;
	h=To:Subject:From:Message-Id:Date;
	bh=y1CxgI/hVSwIrG8DpK11ORE5ynkQDcrsbBqsAkMXGxs=;
	b=ilzP5Oiw8/x3HoCDEklFRpAHR6gDpaeCxYR2kOhd7TWw5EFgrYcTPZCVSAfRlPwP
	KbGEfKKU+rTcpIBaoZPTAwvVrPqdTGF+UldKxvk0PzWzBnDrssb3cmZNHHxi0QojMzd
	KV9PvkCTvC1SKinj/+dccg+nTsOseirGIOk1T6D0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660429252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y1CxgI/hVSwIrG8DpK11ORE5ynkQDcrsbBqsAkMXGxs=;
	b=WN787Ng1VDuzTwf0mv/QOdRZwrOMlxnLPxD6ARw/ITmU5SGpGZxr4HN+/mmc/ZTH
	oFfiPamFGyhdw1x8rc6OPOKDPtDSMG5UkKbHl0FGqcSGcSJUyDfU54MaO/RyavC7DCd
	8PGRferBkTMoZXl9UVI44FLfx5/cPvfVJHIVsn38=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182994bb81f-df89bbe0-bdcf-415a-9f95-e81d1037766d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 90c4c30dfdd5baa38a7f5a8c4d1257e4f276e12a2274f0cde7a5d03d366bae79
Date: Sat, 13 Aug 2022 22:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660429252
