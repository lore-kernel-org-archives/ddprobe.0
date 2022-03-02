Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF162564
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 05:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646199084;
	h=To:Subject:From:Message-Id:Date;
	bh=Rh3JvUJQYL8zGMZuqhlO8IJsN44mjyO1TBYW3GuLCk8=;
	b=JcGFxvU2Dtzsz/Gv+zhY0A3NT52ztzLStrcDq9rIlhcnxZlR4S/HZxFXdRFQIu9d
	ZbFwDGzYIioi2+uUFBY/S22jGsRTvDVZoba0rvRUOYt/nX2ZgJV9FnKxp0nZyUzKlO3
	38j+Ebk7yfAoLQxiv8DTvbFnPiDsnbLjcwCsNGvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646199084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rh3JvUJQYL8zGMZuqhlO8IJsN44mjyO1TBYW3GuLCk8=;
	b=kFbk1GZ5cMdl2nQcHsdb4wW/ISSDEwqqXqY4ZzbV129znje6mc0Mb5WdiuPJ/9qK
	ew3wOMmnJt2iqWBe3xanhr8xejEharqLlHv/Wo7jiCKbTWIk/aWstKHjmgajyIXZlSz
	avYa626BLKVn9FGd8ZyiNedd+N8z5qCvOEH5KF30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f491c96e5-feb81617-2828-4c8b-a14f-50901fd8ce32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b582bc9fdbefe21c99ff1f4984f0eddba9d958a754e32575408e9ac15405be7
Date: Wed, 2 Mar 2022 05:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646199084
