Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9348A20
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 03:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649561158;
	h=To:Subject:From:Message-Id:Date;
	bh=PgEWMDJgk5XVHl6tmWAkDdQmXGQrIDHAiJk+w71q19I=;
	b=Y/cSE87DLzo4nhC1zofxogyQJxzPvPBKPq3gC9x5BtBg8xLxjgiGnG+8rC5x3c+e
	+sSYMoqTsmZ3awWdetlKw48yOzztrwVxZ3zp+gS5jR6Lx8192vAj7tAyyR2kj6xoBH6
	pKuXpP3n4Y3IQXOueL3u41ZB5lGy9zRFe5b2OckA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649561158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PgEWMDJgk5XVHl6tmWAkDdQmXGQrIDHAiJk+w71q19I=;
	b=S4ucCyuHWEnivxKwakw/nZks5iwX7ekeK9bkqq3Eg8O8ZhmoyIyf4sMBI1HAeSZG
	arJGE17meEg/kIRcaLLVNFiFixd3ksbPh9H3KoZ7sWWCMCqCNfsblLUNoliNf/gt6mm
	bcljzpwjacZkGrO67kzGWLgmwBR9aucsdcIatuM0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101801181c2c2-796f998b-0512-4082-ba31-79c5dfab70d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd1901100f42cb85e01a0f6487d73a81067bfde35b7616683c1fa486af3a686
Date: Sun, 10 Apr 2022 03:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649561158
