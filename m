Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A197C36A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652506080;
	h=To:Subject:From:Message-Id:Date;
	bh=cuicptIG/AtqO2KLgjo1hFfuLDkCQRozIhqr+J7XGWc=;
	b=h9DIjHPlNQ+a8pqw+9NqCAG5U1MMt0MU1PJSC4ZXRfvGjm5S8MTXn3lx1LlO+HkN
	Ku7MXZ8eWoLNcr1z/BpQO/HAShkOeUANfD3ZRq2OZPnp2hemrSJF+r65deVPZVaCPXA
	9uSovqBswKodix9CsFO+MMB3b6qHVQcSnxoT01YI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652506080;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cuicptIG/AtqO2KLgjo1hFfuLDkCQRozIhqr+J7XGWc=;
	b=eKB6Btmn8q6dU6pzVCPxTgOYRk1igrev/rdVbIVcRlHDTFFRXALSu6FS7Qv8j4IJ
	3uaNuwfudm3VGALV2kuUOyfmJmeKlHm1EuCqb6aDjsPF8Q4HHpsQoELZ4mi0q16uwy/
	O1sRUK9azdcJhdVRCDllS3W0/AF9RMl2CKAth5V4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c109b052-028d8336-7217-4a72-a37e-ff8d81ee1c78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e884a61220c93a7338847dc186143825348c06eaa968c49ed38861da2806de0d
Date: Sat, 14 May 2022 05:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652506079
