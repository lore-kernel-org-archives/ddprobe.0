Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F214801
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 12:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650284338;
	h=To:Subject:From:Message-Id:Date;
	bh=4MaxkN34+1IR4p6D+ro7K97JTZyU0BK7pPH3lpXuqu8=;
	b=S2p0eTEvFHPmyxcQN7mBvuCzkDV38rScRzwmd+SRbf7Oz4klKuEAYUkUE89/yi2C
	XOTxd5xyTASPkK7uohtUYdavqyiJNf8XBsh42SC4Fqr6D9UuPH4FKjSg39xA3m/Jkta
	Wnci1LN2PowTANLAjjXa8WHfmArbS2lxeNCJ40Sw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650284338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4MaxkN34+1IR4p6D+ro7K97JTZyU0BK7pPH3lpXuqu8=;
	b=flCL1IDi85nwyTIADy0wZXmwvd446ljAuVHsgIu40funlnIQRJdrWxZBbLPCwaNv
	Dqdl5U4TObUvPzvF1AnWnnVjMOTuCKMzRa7HtFm85GD8T0QdwjJjxoUPHmtgaElcKye
	gphMtvzSqvbSBg/Eoq3h/ihSuNIXq2XGga87QXPI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c9c9c70-8134a202-2ee1-452b-9b38-f2ad45e20610-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2054ff1143e2ddb76ad35d1e7344e9443f7046b577351404f7bbf7b433b4977e
Date: Mon, 18 Apr 2022 12:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650284338
