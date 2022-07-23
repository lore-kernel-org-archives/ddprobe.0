Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A4E7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 14:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658585212;
	h=To:Subject:From:Message-Id:Date;
	bh=DxSlPBdxgg2KtTezvfIUVTa9OJEvC0PH/1OTcoZ6WHA=;
	b=fUw4TgwJ9bIhFPsZjXNh4mWSRA0yLIXp8ik/5SOjzI3H4SW0owlZWYoYoNmmpPop
	vjunU+AGDeUiVnt0BkcFQGW4qShL0iQC7B7TbEkZdKKdbzVQicZQu2tKBDnu1HGuLKv
	BlsjlpsiA4Pa4TezskZ4UgrMon2UBPTO7Wubx0gc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658585212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DxSlPBdxgg2KtTezvfIUVTa9OJEvC0PH/1OTcoZ6WHA=;
	b=RB0CYhU9RGR1AZwPc2rowW+tLevODD+sM95V0r65qwcBVT1U8Qp36wE2ylbs2aEw
	0MTiaji+zrLVLr3uAVPW5jRqITaHMG8SD4h+gjAVBk+cUnDwyioPlMyUey4ylwGn+wr
	Dj2WPYOA5HEtWxM6SUvg7WDuag4Q600LoQLbKBz0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b61e59f-abf63b19-ba54-4b23-9e52-c6423169e8f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2e292b04db9a019a1517132bc15f58fbc188b68f50dc26e62c9a541bf8ea6e5e
Date: Sat, 23 Jul 2022 14:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658585212
