Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFD171FD4
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 21:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654463339;
	h=To:Subject:From:Message-Id:Date;
	bh=cC4EZA81vhbVPHQQWfD3TrLmbpPpMaIqr219W9QCT4c=;
	b=Wf+cuedbypR8w1a9BCUure3Akg/29UTs3fO0Er31MbBtZtTWKf8yskxuom9xZhxV
	a9FMo9W3HbhTSfGBoHDdDHLfuf/5N2EouYHyOrCNUhxTuXw6lGCAkpIjMI3quFRNkfi
	ygt3gRWPlB/li4l6VJKs6jfajo58BWroe7aHnHjc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654463339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cC4EZA81vhbVPHQQWfD3TrLmbpPpMaIqr219W9QCT4c=;
	b=ENoD9VH+n5nQwlcS32AH04QSnBsNlM20pazZpA9pCsGEgnMuufAHPeolVSBsVBaV
	zAUMgrzJ/OWICOxnHrzjdp6/6QplKZyRMuI0O8latrJCObHZ/a08xLs+K2Ud+YfjtFa
	gdIiIpWdg858zviJ+pwSNZIEZm9ExnGC0GUTGMh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018135b31b11-fed6e797-0438-4188-9b03-278028ac2ed7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 489f21a0ccbbfa4ac43eb2ebcfb5cefcd62ff6b45a52643c87ad07bbffeb9a4a
Date: Sun, 5 Jun 2022 21:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654463339
