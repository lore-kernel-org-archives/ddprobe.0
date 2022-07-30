Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BA2F1FB1
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 03:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659151252;
	h=To:Subject:From:Message-Id:Date;
	bh=I/IdJgsMf6WBzs6WgeEmMF/ERyAv7FPi+rogppL3ICY=;
	b=eD96MU9vYNUC/iCigFhBQObgKcz/46Czta2dwiBFqtHlVCAtMv7+o8ubm68U63ZA
	ntcHdyIVuVXtas5uFPHC59eOwx6xQ53BaYVTnHNuVn1HQTp9JBzvdJgNnpepgT3Jo8b
	TAlAkn4zbls861oREum+699L3kJBbwEmGrIxgbu0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659151252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I/IdJgsMf6WBzs6WgeEmMF/ERyAv7FPi+rogppL3ICY=;
	b=BtdfSAPJFSaG2Kqe9aEtdCll+4X8+Fr4Z8jcZekRkTuSVqNEoALajjCX3mBwrlAC
	ZItIEYyc51UtC0z6JgKoqyo80QWDuegtoRUCggiKSmiYQyh86Ns0CJ6jms7SAVK+5OG
	Edn9Lu7PuygLFCuS29SGJZIY7kwGM18Yjpz1GUss=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d1efc57-7b12dea5-2fec-4af3-855f-47b960cd42b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e52ec20b340f10b1f58805acbf1c80c4da56e8d36b18328b653d1fb3d6c23d13
Date: Sat, 30 Jul 2022 03:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659151252
