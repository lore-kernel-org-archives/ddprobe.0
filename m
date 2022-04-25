Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2AE17E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 12:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650889318;
	h=To:Subject:From:Message-Id:Date;
	bh=hPDDVNrQpHKyDX3eRstkZgScWlGZQBmjygYAv5uNq8c=;
	b=TNXJiKB+kQpFegtf00G6oPBr1S2xJif0IMIrmn9iRd/FG0i7XB4tGwhtIvkQwr7/
	qUMYsf0lwOvwPVsRRHNGCwleYKzYrJHQDvtVFh7aN+5wWDEn60vfR8dgoS0CxXNAjIg
	wXjWuAc/vPfrTHuI3tJhdg12gZcKD/S5YoWZao0Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650889318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hPDDVNrQpHKyDX3eRstkZgScWlGZQBmjygYAv5uNq8c=;
	b=JmXSL2X2JfxgrxyKiWTtkJozx4iCbvu58CwIjfGN+QoRDij/qczdZRnd/AvMLFLR
	OoDscg1krKUz2ND92PU0m4YKUCSkymW/B5EtEid64RH1DvyeA+/S05p2Iux5uRtIguQ
	gYA8VOOAqS7ZF9xuiCPDXYy/rx1UEcTbE+oMgh9w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060abdf69-5f5ae87a-012c-4c69-86cf-5671f21e2f51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b24244d55a9dd8b6c0e5f25e68deb5879ac9f8df1f9120ace49fe430322cdb7c
Date: Mon, 25 Apr 2022 12:21:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650889318
