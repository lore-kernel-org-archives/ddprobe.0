Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 017CE17C0
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 09:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648375078;
	h=To:Subject:From:Message-Id:Date;
	bh=60lOdoVILYdjwLSkWCggtY89LHaF/H8AHjdLyLNYGOo=;
	b=hrCFrEVnSHEHpSiVMON/xkGzMJ8GV8Iq34yufYYkeKLow+7UJF9ZccwkKWhNnDqX
	r4kW6/yoofYnTRzPL22RA7t8KzVqEVuI0ij0Heko624MFlKt4UKy2s7t8KWG2/FrMk9
	pZK7nzd9px1r8q71eXIFdD5KvZ27d1SXXYGPdiQ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648375078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=60lOdoVILYdjwLSkWCggtY89LHaF/H8AHjdLyLNYGOo=;
	b=I5dVtVYyqKD4Gb1jmW2pvxPmBhtx/Vk/B/Wq4AEtN8HNLWb3Sdhbdc1nddpvJ0Uf
	vCHMftUBgRDMfs8IYmKP9rRP3Et/tdFjGNtfnRN+78NY18MIYw+T05IZpYsOZbKB3PM
	kZCZHB0SRSpFH6Ccj97XCjEif7qlNfc3BiQ8PIvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcacf9d5e-4039f392-51f7-45e1-9dd4-1a3e0dede24a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d9bdd61d3f9c58e4a59ae03c69f193b0d6f1e177d80511345fe4103cb0461fa
Date: Sun, 27 Mar 2022 09:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648375078
