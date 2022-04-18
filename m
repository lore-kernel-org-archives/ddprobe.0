Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91356A41
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 20:26:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650313619;
	h=To:Subject:From:Message-Id:Date;
	bh=AYvCWu/RrBc3FqXh5v06rsBiMV/ZH9p4zmUVJWz2XOA=;
	b=IQZtkfP0tTNJuwPpLfxKDkclqxA170CBg4JbQV5zlgcu6HTOG5wrBZSKRu3y2qcC
	eBkTZA5NmWCDIsmprJE56Fpm4IMT8AQOBhRYTnQOelNUNapmPve6IsuKTDLIsEKknim
	KHesxRtzKGdRmDwmDumhNcN1R8Tk0L7hxecdXjWI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650313619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AYvCWu/RrBc3FqXh5v06rsBiMV/ZH9p4zmUVJWz2XOA=;
	b=cubxLNdEjhrLIjEQ8FQd5NIbsjY9gvi+rJXX0qhqZIotFdXjqIUNBtvimXLvN5P3
	PEAO7WCg+l1ryX6/lPtqmmgx53m3IxCSI5K3Dk20f9jNpR6s2JljI8gdgbNv9J2c86K
	KrbcUjJ4fA6O2WWDFJOrxj23JAQ20oh8RIqwaQu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803e5b63e9-6006bdfb-c9a9-4ffd-869f-de351738445d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cb711e79fc7b38edf1d41ef09cbc171e002c5c80b5ed150e7fb0b2d4e238cba
Date: Mon, 18 Apr 2022 20:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650313618
