Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D21736D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 04:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654056359;
	h=To:Subject:From:Message-Id:Date;
	bh=fuqT8mC9KiZ61U2OyTgesxORSAXc+VrZd8L1yDVYHMo=;
	b=f7nJqo2oAyeBiyw3lbNGoCc0WKBXQN5qF3Bzxy78TWlB0JtJU5yAIP4O5Zp5PoQD
	n1Lfq61r8knFIAYxKS6dqXjWp15WvBxATo3iBuly0vb0lADQd2AWaN4nfdBEncpbWHC
	yBYBYLELyqOnhI2Ri313CgnTxK4sUao3BwJ/E7/w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654056359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fuqT8mC9KiZ61U2OyTgesxORSAXc+VrZd8L1yDVYHMo=;
	b=GUfZVjvTS+roILjqBMy8Ju/P7iSHCdinAOlq+ccEKZWnF9A+YVD5MGQHq1GISjsb
	1hkgT2dT61kbgymZDC8FaG1KTetqCOPIWZeXzC7ssfdUmDA3cgs+X8Rn79jmpuCQR9q
	zkIEF6x98OyvFpJ/5N27dPdlmyeQtW6cjRmf+rFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811d711556-99e5f90b-83e9-4de3-a7e3-466caf892cf4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8cd5184cd74e6c40bb9077231c358c45890c7cbd62bb55545aa5e461cb549788
Date: Wed, 1 Jun 2022 04:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654056359
