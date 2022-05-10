Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAC1B23C2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 08:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652172659;
	h=To:Subject:From:Message-Id:Date;
	bh=QMWD3ctYHB5tL+Zdezc5IXwEgg2aZ/gG9SuH8omCm70=;
	b=beniGLmtilsn0OpSsLUr1eJBePC75PoiQQ0owrn6/jRsGCPoXfY14/6rPrZc6Q5i
	zka3RO/7omVDR0+XiyVvH8RF/xss3ROg/QI2y8dstUeR4Fpp+gUBAaRGE/OGTBrkhe4
	37tb5X2rCuIXx5HqqAA7Wk5+OsR5+hRgNOV/KM8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652172659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMWD3ctYHB5tL+Zdezc5IXwEgg2aZ/gG9SuH8omCm70=;
	b=Hnn4Hh+QCmtkPkQDppWfWWV1E1RPHoNG9q0vkvvkyAjppxckBqlQU7rGUyZZgXN9
	IaPm5VXtylcD1aF0MV4hu/nPBqzxewXEkmjQAkJH7T7H3+cJ0d1asEHf8sgppUu9u5B
	ExqtPM7oq/kMuAKOngfRxSHRDT+81Ni99U4crkEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ad2a1a64-ef892657-e609-42a4-a01b-7cfc3e693937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 295c6d080162a0375ebe56b9e676e34dbbfdc74a01a38a147b73dedf7f2e9c67
Date: Tue, 10 May 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652172659
