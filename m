Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570687B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660800652;
	h=To:Subject:From:Message-Id:Date;
	bh=4Epi1wiAld0mjBgo/BLSIHP2Zgckdnz0HKq0yDXpFFQ=;
	b=O52bKcr13D4QohGqkGVep3kLBUAA6SjM3tm5btpxcv2LePkBnQjhVt76E7Q1tiPK
	zTLHNVdbAirYCcsvVTBVblmBVW/CMcn9szqZev9qk4K45iT674Rise9DizHzBbaH5It
	g+28b8M1eaTWOHuuQSEDkg+cvC/9NwnnZAIzoDA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660800652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Epi1wiAld0mjBgo/BLSIHP2Zgckdnz0HKq0yDXpFFQ=;
	b=KR3J7ifbzoL2DDwA4vZWBRIcBHMbY6wvr96xYPGTjruTzSNsSRm/0EsH5vTrkZMW
	SI9gu5WX9y6aZnI1gNiuUvdmohIUS40ynL59q+6jxaEuZEj/JhBvxls9cM20LofgIsi
	4VrxwyCsBQKt4zzv7FIYgqKxrtP2gUjh52bpHWuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af6ed562-a88a2b69-7619-479d-97b2-1f521aca5eed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a647edacd18922674230229f74552350de3f5b0d778aa3cd609fbccf07b3250
Date: Thu, 18 Aug 2022 05:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660800652
