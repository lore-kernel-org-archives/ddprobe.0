Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFE5828E2
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 20:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649364958;
	h=To:Subject:From:Message-Id:Date;
	bh=s2gtK83o3Dy4Mh/YNCLBM0TyTzo5smrSwNdwVpahOrY=;
	b=D+euLVhZk03gt7+pXT3P03cWY9sgBVIJV2eu/lQ5jxesNuJm3RKejpAaW+rvaeKj
	AO8UYDzivPk6FuZ1rYg2R9iKDGxu4if6NJY0XDufm3jYxzI/CAyLiVhqr4m6ucvqZWK
	OrrlexJxx5817DZgvjR16o9XHSZiISU6Up06OrsM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649364958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s2gtK83o3Dy4Mh/YNCLBM0TyTzo5smrSwNdwVpahOrY=;
	b=SJanJ2M1dJ1mh/XMwkfAIkeatVFx/gKCwJLx990DEh4iv99VD2K3FdVgp0hzkduo
	uJ6SPhxEc1Q2s+49bS4/VvUeDbQEI0tQ5JmxI7V5CY7NAs7GDBY2jQrua8FvlLAybLS
	B4TiiIGtDbzlZ4oyGYL0SjrVGtXeB3cY3TZXp678=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018005cffc8b-a7e0edcf-fdf0-435c-87d1-074f1d0b7c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: da01c23a3dd2a42d6130ee50f87f9805862faa6abae6e1c97c943e3ea9cb99a0
Date: Thu, 7 Apr 2022 20:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649364958
