Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683FD180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647687984;
	h=To:Subject:From:Message-Id:Date;
	bh=4bcDVIwDQu7dmEgK3KUBXaH87wDIGDI7EeZpTY6fE7E=;
	b=BNKoX2oYEKdKn3RlhgjumJv89+uEAoUCNpowMpicFBllwbnwCGSVlOKI0Ngu9qjS
	TNWpyTxjk+rg2ZP4varQtUkOYTcG/5BXw7BsAfVL9rPXhkGkgK9ZoOKr/Odb5VPk2Bk
	KiaEzx0OqxIpwzK1SZSsRP3wDOO0t8EAp/2BJqFI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647687984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4bcDVIwDQu7dmEgK3KUBXaH87wDIGDI7EeZpTY6fE7E=;
	b=R8peMsR2/9kaao3txdB4vSQgG47SvjmE+zrqpndebIFlJrdPwHs9QseqMcZbVJcd
	PyYtaILXFkWw0oS5m5W/xtcBwhhoLRs1GIwi41sN6mwjYMMWdVRLiVZYWgxxm8bBn4v
	vwAMMJo2dOyEpsmHiNiB1b1qNxWPRak3S1n0OL30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1db667c-a6b4e636-30b0-4b68-b214-9afc0c37f1ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4814e9429515ca0478e0daf8cdfec7449f4bbad65cee58bbaac4acb9de4434a
Date: Sat, 19 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647687984
