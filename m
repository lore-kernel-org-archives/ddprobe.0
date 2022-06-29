Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10417EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 07:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656486412;
	h=To:Subject:From:Message-Id:Date;
	bh=2DUXUrMpib0X2tTzw9oHnTHe+loUP/xtxFAFXl4aykg=;
	b=Gl0txjbnJa0AXatuzbZyRjcyFH5FD0UOsZNZxYyN8q1ph2hhKcwSDaldmlAVCLFR
	ncenqprZ4ZelkqVFk/GHx31JKQrQH2paWm2rRwaP5+Mx7g8t4IJhLN9kQPNAezAFxox
	XrrV391z/dcZd9IC19uCnzdF+guqNyRASLrNX+W4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656486412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2DUXUrMpib0X2tTzw9oHnTHe+loUP/xtxFAFXl4aykg=;
	b=FHjKxn1FDUtYa0LTworAqLIv1Fzop5mB46pAXEPcMRYrxrqi7hhyjfC17gGwWjPt
	oJOsgmxviP207pHadrkn2scI5SWWqrNWK/qrGyWdFzWyp7nVivAXpjfO0ZdfbCcSL0l
	CyycO8Ii5rEf36RZYfZzGdF2+a3QOwiFCpu8SRLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ae48c020-21a1a28a-fa4d-45c8-ba95-910cc5de586b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea9950fda2cd6c579fa351009d925c3542a8f916602992d048594c84f6e078d4
Date: Wed, 29 Jun 2022 07:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656486412
