Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C217A
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647584485;
	h=To:Subject:From:Message-Id:Date;
	bh=/nsED0aogiC7MaDDPsfeOIxbCTNQgBYdoHnGfQJ92jk=;
	b=LFAdsmIGYWO3REbPwpj3DQ8tAxwJHRc41p8MkCGRrqe2r5hxgA+P9VHS9aOcn2Vt
	Uq/CYCGfuI51maTPFRPh+DQFLUmGLd0LSJKURnnYzA1jNmGziIsGUiPzH7RuVmc54Xk
	CLdWcsWYCTcRkgy7iusor1OxrMvZi9jQVWWI8JYQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647584485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/nsED0aogiC7MaDDPsfeOIxbCTNQgBYdoHnGfQJ92jk=;
	b=OpN/imOGLNNLEbtngKAJ+xJPar4plkVqKgv8egUfgunIP1MnJq91o1bLwYuFTFOA
	hItzQ8xZO8QlNGKDtXvbXWEuHp83GEqvP86Ak74PoEe7MXpYG2K31G1esYlGjAjD4ra
	2MSWR4IeCD337dAIPa1b0hpUhUciLsLyoA/sFvTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bb01dc6-49fb5b4a-b6a2-4de2-abcf-275e4c43348c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4a6db743f8c69920bee179dca04b29f935500b8659c97e9416bf849cf884f82
Date: Fri, 18 Mar 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647584484
