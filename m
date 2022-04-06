Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042D533E0
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 15:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649259178;
	h=To:Subject:From:Message-Id:Date;
	bh=dSZwAIMhqm1S9xRHRUEE1KcmlDEQDv50X86BH+LP9GY=;
	b=iT0DhbmixQHqnqkVTvSSEaPVlHsuD5UcsTQFbdlFWl/8me3lCo3iqvnYF/r8ErIh
	5ufKu9oQ2zu4iMFEHU9DqUsXG4UFzetGRT62/lrb0jD/xj5myoHpoPeXMtLmkEES/l4
	f1MGAEyoIFOmbbfIZ0cmZ8gxVuu09D9yxbJmWaCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649259178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dSZwAIMhqm1S9xRHRUEE1KcmlDEQDv50X86BH+LP9GY=;
	b=G/VdkCOo/y0wsrt2ntKAOrax4yWg0J/TwHyyBrVyjZc+g0AS3DxhBNdJzMnWDvjv
	urcQryfn1S7WMvfgmcybvb2NSn7i0OjduaKvZo39fOYSnmDYjOFJXTosAw2aZZP1B0g
	0H9C8vdZlvP0wADpznICx8MUzY9riHtZoZ2EMNGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fff81e920-01e9255e-898e-4a4c-b694-1d3926843b1d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a4788c3148ed1729fb14a245adf0c2adcd87d673bbbbbb6377b223404f402ff4
Date: Wed, 6 Apr 2022 15:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649259178
