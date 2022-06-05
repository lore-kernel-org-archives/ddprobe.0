Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7CD74695
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 04:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654402619;
	h=To:Subject:From:Message-Id:Date;
	bh=KNY4NhiwmzEugwz/c14ZGBVqz3MDTgpDLuhE+lRqok0=;
	b=HeJcHuCPOGHSFMcWECw6tq9lb7ryE9rlCYnsGyPmCr5Sya1e4CQP6e062a05/5K6
	+lsAxzwmLRBuddU0vtDYieHFB4Igk3VM3iQllpAOxkz6ExtbQ321jH5UYxMzpBEUKp/
	zPoNAN7zFGXHHYbsIyQ/90upnl8TiAKlPXQceclo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654402619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KNY4NhiwmzEugwz/c14ZGBVqz3MDTgpDLuhE+lRqok0=;
	b=Pk1EEMzDM0R0hrzPekDa5mPo1RFKAs1K/LUGk5yKuW628awYqFkmERxPfPfDn7md
	Vr2Ljy0V2UBnlxB8+NJ6hAK1JKRWc5R4UPz3GPxbJCH/tqnLNbS+ZRBZJ+dwxEmm4bp
	fpvXfBDK3VVDZUbEiOCBse4RVPpFjc1lvt+szTF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018132149756-17715dc6-c165-499c-b204-f615cc48c175-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e52d28f75ec9ec7b76f7167eaf5a3c4dbb745b3b3116258943a9ac36746326a8
Date: Sun, 5 Jun 2022 04:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654402619
