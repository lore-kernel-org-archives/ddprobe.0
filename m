Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD8C10EC
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 07:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649663878;
	h=To:Subject:From:Message-Id:Date;
	bh=RkdPPxHMuVx0DCp9fvKsO2Hiact0NRLRCwZkKLHvY5w=;
	b=Gk5+cuxvaOT6vg1jICRg5jp37vyA3RG01nk/gPF9lswEGN3VZyfSm3gnT5lpXHoo
	pIONREBRzFU8zVZ8hHJWwfdtUpH45NoiEP853nuje1X/5gLobS0gqaP0U5H5ZRFM8//
	j1t1IYAzNMLbm1k4ep2b6iTFKN/oJ0vzhR8925yk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649663878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RkdPPxHMuVx0DCp9fvKsO2Hiact0NRLRCwZkKLHvY5w=;
	b=QK7tdj9voqumfeaUemRJ6kMp2X2wqa2dimj+AExZ5zsH47QTVdFrcdjYHSNqg6/j
	Bn7KONzUpj5TRPi7iWv5w4ux9j0Ujg9jE7b/g2z11dNZ9Os3E0xF4Pemvs0v/jIcBvK
	RSu8vkFt9DC8Ul6LwSE991qfmPayfIUttxH4ixLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018017a12468-b3d26172-21a2-46d5-9753-9e3f46dfbc73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dbdf00f2de32dc41bf9abfb4b02655c1be3e6f602f7092ca9c3271c68280de23
Date: Mon, 11 Apr 2022 07:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649663878
