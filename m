Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667BA361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647102384;
	h=To:Subject:From:Message-Id:Date;
	bh=Du2XY3Rz843j0d74Y24DpGBMBZkXK4gki46aGyUkRXw=;
	b=RqBcif+xXmeB/nzfoKsCfeygpOdXTTyUFYSBGFuXOdTo8/SFfFe9meQOliSVIpP2
	Lea18mA4AAANbf2tgbOMbQKice98RTmCZ/mqYZacAk6qqwiOM7CCPuRLZnuNm8eF6Jb
	VIdC5gnjSpSB63Dz9+WjDYBxiuZJ5gZm+B5aUgeg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647102384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Du2XY3Rz843j0d74Y24DpGBMBZkXK4gki46aGyUkRXw=;
	b=FZ3AGK+EaQ4wwCzGNeU7ef84v/62kcydT4fA0JZ2zd358jPl6QF90kXZN1e7RTrc
	dBuU9D62QpdEEeyi0Ir+Ab4jXewGu83Kkn2O0vgEUypzASjQ17o5+cghEt+gtN29UP5
	xd0+WuYYLNlY0QLRgNBh8/j+joeuPfqvE0R/rodo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ef3da58-2c9babf4-2e9e-4583-bb0d-8941a086f162-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc0c90521adbe7575f1ccf4ae43a1f1994f6fb426e0d7c7e6ac5ee2c5a956eba
Date: Sat, 12 Mar 2022 16:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647102384
