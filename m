Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273E97B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 03:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655522099;
	h=To:Subject:From:Message-Id:Date;
	bh=6LKrVYu5Jci9DbAKc/xNKCN9EmH8HbbfPGEPfAZqxNc=;
	b=UybbTbJWh1ZWqBheTk65pz4V+AuEoBEFBc/SjL7IWNn8xkPRo9QFhavQYe4x6Ml4
	cClxuGcTdXmJSVk44j4UXF9DWzN3fEd8QiYK9jvKqYvvAGAtkaTFDHlku/callhFTwd
	q8/R/ZTAVB11ObQjkL+d2yWvfsgj6y7You1aAJas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655522099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6LKrVYu5Jci9DbAKc/xNKCN9EmH8HbbfPGEPfAZqxNc=;
	b=aU1ZlArtff8EESB3qxkMahr9ixH4c5IFMoSUb4EdyMY6iYmJAPyVZ77lkCF8ct89
	L/Sx8iabByV13QRAMEU2wL1i1iCexQ7Gem/FML5629jVaPFj3wYVO3PJhjgBC5IK1BN
	FZA5HMdgSrCcZ6a8X+DunSSUkBf3cOEVnCYdOwps=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018174ce801a-114f2e10-53b4-4035-93d8-cda2c08a5964-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa761416e05563d212ea5c00cb0d151ce9dfeefaff557f8e85a3176d8428ee17
Date: Sat, 18 Jun 2022 03:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655522098
