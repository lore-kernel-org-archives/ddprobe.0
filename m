Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAEF11371
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660310453;
	h=To:Subject:From:Message-Id:Date;
	bh=qXe62HHq1GsZwGiM3o9F6nzqTXvISGYtJDp8Fa4P6AA=;
	b=ZjseWgaHWycA/yy7jO4E4H8HfhzhwL3fCsgIcPI6qi8HP3PLppSUl7jAOYxPnqYL
	hAmPgDXdqiG8xfTf/9+YWDLQPE3iSBdqgbS815m/3F7icXPvfOd+sqY+8U57WPiofQm
	gtsOukKy+38c9opF0WaTn1hySXu+n/i+iRV/ruU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660310453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qXe62HHq1GsZwGiM3o9F6nzqTXvISGYtJDp8Fa4P6AA=;
	b=bTEoTqloucmipJ2WO5R1DM/CtsJzpUSUtnDGeEX5I9EA20pMmYlLKrZsonEVXr3n
	kOfL44a61vQJNQbLpdz2P3M0ycWtXcQJ6+0i4VQlzDiztJzqeCo78MuLeq/SEDtxoff
	KeU7oCBzHtJl1ts+HwUSlfdpoDpksFHUOHiFouug=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829236f959-ff4ac2a4-86b5-4faa-8a7a-e674d541a8c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a31604c2299fe4f9b48077c6fa1b85eed0d9ea982963f60aaa43916a0a3d9a2f
Date: Fri, 12 Aug 2022 13:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660310452
