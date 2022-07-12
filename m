Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A4D6AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657663012;
	h=To:Subject:From:Message-Id:Date;
	bh=r/Hgyr7me+3TJJscsM3R7JjCSWVI7X4JCbfcTLq5HCg=;
	b=Gz1DVghTLVSLMUrhm3BByIUgDCDnggJqmKVNsI9pIefCkDeRY6W06eep/bwK1iMF
	fLURbeGtYWRee/RCdDKxzySYKHAnmB/PGK5Kyu0VFHEM6Lx0C/rzC5/P5LaFzJ+PSQU
	7qMb1MJv+jKOcHCUYfsjJXNwZpn+TPK1vCNW6Nzo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657663012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r/Hgyr7me+3TJJscsM3R7JjCSWVI7X4JCbfcTLq5HCg=;
	b=OTNe0Yh/hhJvdgytct2Xh7yiJSCITd+K/fSF3wtGpCCQHg5L/dwsxCYfxBFTeTga
	WEzIAmIOBT0nHzAO/PlnoATE+u8W8xZr14TjEUyaBRZ9A91M/CBnjipKdISDvxBAow/
	hJwYIvPOEMaa8P3mvKP+2PvxCYxgeOYxNjv/oZr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f46a3daf-0517a721-931a-4eba-afee-4b85540dd916-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8d1ba66d13c73c276b9ddcb31cdc532cccc289e4fb97136fbb7ee6ed6fc9651
Date: Tue, 12 Jul 2022 21:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657663012
