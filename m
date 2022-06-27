Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A3A20E8
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656303412;
	h=To:Subject:From:Message-Id:Date;
	bh=+peV6WhKmhgvZ7jqiP9hk/pYb1CWUfzV9xa9WBGrkp4=;
	b=H+4X16VHlbpIIl7mTFCTp746tDrj2L0vF88OVLVC2m5HL5xTZzbpRotITR93nSTs
	pB36q5E9iZBOQ8u1JGGp6PfkB/a7tcdstKD5/6g/z+jgbG/ny9I7LFd280HnvihkXLT
	Z6WBB4nXIjCNKP/G3l1yi1Dku9a7fjApLbgA3N0Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656303412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+peV6WhKmhgvZ7jqiP9hk/pYb1CWUfzV9xa9WBGrkp4=;
	b=PmHKG3El/tiuqhNq2+IJQPzy8T4hMp4MSAWEo6r31Vj45jR5xTT8lbBL7ekhApQa
	q3/KjISDD/ZFrCWhbrqFE6pqnhU8DusrhAo/pP3RV7LL/CdXVXcqyBoez5vJfkIypWV
	yKQfTyolbJHgqHyN5Z25VOTIJ1/xBAJMtH+BQsw0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a3606420-2d1bd881-ba73-4f25-88bb-a142a8b67560-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2591efacf5ad48ede518b53daffc05cd6ecabb9229411cc461b71090c4b43ec
Date: Mon, 27 Jun 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656303412
