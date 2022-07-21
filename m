Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDAE3C0B
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 12:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658405212;
	h=To:Subject:From:Message-Id:Date;
	bh=+9FHi5LE16U3o180FpnPbytaVTtm//gb3ofS5w9iUmU=;
	b=kSblenGqC2Y9c/o9x1WhdGOuFQgq+HxAlCmxPO+6oosAhIRf2Vs3H/7KbGtaeuNc
	KdNHFLVDX29zznGoGHKUglqd4jYsCz+/JyXPf34UO3mZrT/lnXzA5DosGc+1zg46i/n
	T+ipxExlTTknQO/SACDdFwgkREmz/gXuMAiTdIJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658405212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+9FHi5LE16U3o180FpnPbytaVTtm//gb3ofS5w9iUmU=;
	b=NhyvcIVqMUQHGWHHVcICxmSYSSJiZWHXY6GjcD/G/lpQ/wuFxn/zUk50DwjdsngF
	EUQOjWc8FhmGRblBSZloMwwv77ZeOVyAjjq+TRDTGvLw+Lgf9rPTPGaOFVhhrHaDBsw
	kkfUA4OiH139tVl3qLzflT3rsEyi+dcOnJFeDMIc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018220a7507d-76a1e3cf-5983-48e8-bb4c-219435c0fe6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 333de682a804c085a034130a3f410ff01bfbf9c53f3b2bf28c2c16b4ceda6eae
Date: Thu, 21 Jul 2022 12:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658405212
