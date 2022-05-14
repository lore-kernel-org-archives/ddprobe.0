Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C78E36C
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 03:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652497439;
	h=To:Subject:From:Message-Id:Date;
	bh=eOMVQZf4t9yMjJZnIkjDlLOr/bAINP25MVVH+kmncgA=;
	b=X6XhrpCnLOMmKRrKtpcZ9TeLL0c6OQU/upe6nk845gXeE4WyJ3hNl4zDpA8TbDtR
	0f9e01NdRuAqL6ddZ9GfOGRCWiRd9t3vv91XmkMOppYE4H+Vpv1H1niCMm9PdYdEJyr
	B8NazH/j255YC/0jyZU57Ks3x1A1qw3S+3+F7C3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652497439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eOMVQZf4t9yMjJZnIkjDlLOr/bAINP25MVVH+kmncgA=;
	b=DcZHjHwMtXPnQXiqsmvboHvJRVz2MvEx8UwqOd4F5N8V0wQCyvqYwrOeWnuLqaR1
	ldwtBtiXI0EwK04SdASYxxjh+c/pmXcFbV56cdBnvznVzMafX2QXO/MgIa76mtDoW7O
	Qe/wHwbVNGEAYZ2645IY0P5igAM0Urq4LwVeewNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c085da41-f069b7c6-0b32-41e7-ad0e-ee15779e3185-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d83d07b5da8fff11c7691e31c292de9c9ba9dfa76a6826e858d7d71e3a937a5
Date: Sat, 14 May 2022 03:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652497439
