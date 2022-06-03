Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B70AA7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 20:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654288500;
	h=To:Subject:From:Message-Id:Date;
	bh=Uf70oas1StvC6K14LMMM5CMrue6jleeuSLgtz0nrXRE=;
	b=j6eV4sTPLtS/Y8kGLR8x52iqdKxHFEW83ByM3TQC8rYGHsFA3blsRPEnxpd1snGk
	leh790tckAOoqTnmkc7zUrnCL/SsRVwjZ3PFrAXuM7SabOMeNCEbp0Yhqo9IqhVRFjX
	+wjALGgiriSciBzP5Z4ywLS2K7LpAkvQyXk0JKPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654288500;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uf70oas1StvC6K14LMMM5CMrue6jleeuSLgtz0nrXRE=;
	b=WOPeusFnpr/J7LTD18BC87E/GzochtpPvrJA64lyfIFkLuW12MGNZNiBGIsoPqWH
	3BVI0cKV1Q37DmfqYr75wdyivuBWG4hh9IsUy91a5Gsaf/Oim++y6Bh/uttuTxXje0t
	QjdAFBID1OavyCRJ5JrOT4gW1VnguT8fmZ08Oycs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b474254-f6c5cde5-c52a-4776-a6a9-6c58d000da6d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c6af9aa16125d3e6f449a140a16c61e18af2e597ccbd6e7eaee4c48318d54bc
Date: Fri, 3 Jun 2022 20:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654288499
