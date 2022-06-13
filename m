Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13C10184B
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 17:33:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655141639;
	h=To:Subject:From:Message-Id:Date;
	bh=tZe8MkFvUKkTvkhX/nUDiUEQ5Xyr0ESKhlQQL+J61Ew=;
	b=JYmC/4vikBmIxvaF+mznmrPhNTnXnOVyUaiqppWfN5M6Ji3J2prctoK17nJtZx+z
	+piHNuMAfg6r3xKOMLbLnb568yRCca290n/SXml1yLhExs7vZucEWDHG1mcfmOZTfI9
	jKvUJcEE8liF5jbGqI1DsY9gGxhxfQFac1c82Owo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655141639;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tZe8MkFvUKkTvkhX/nUDiUEQ5Xyr0ESKhlQQL+J61Ew=;
	b=VsnE+fOVC9Xa9JfRXkSeUvHC/0VLqdbtq3U32t90u2MsO0fXjxbILMwdLCIVwl+e
	fHSl4KXILObP3ROdXGHAePpcCKfQvPbr1SPE/myPfLcC//Mc9sGV5gkDmaI0ifwpyLW
	b1KT2oE+4CXrkKkrt3uR/Xmyj+Zcx6Txx2t3EP1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815e212465-3691abd8-d00b-4f92-b596-f0b319413b34-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72767fa726b7539e0f48737daaa31d5335e2301a59315829ff33c31757bcb8e5
Date: Mon, 13 Jun 2022 17:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655141639
