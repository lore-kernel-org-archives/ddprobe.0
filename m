Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F552F23
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 22:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649888878;
	h=To:Subject:From:Message-Id:Date;
	bh=rOZbu1W75NfO/pLTzH1RuS3YmKIrJmz1ngAaVI0BLxE=;
	b=cnL5IHhxQZjhBjrLmaBHRSIXeOXmJ7HK9AAud1O+W+bfnp5nmV2lHiYprJZdFPnN
	fsQ0iGg9SUpAGZpHszBaZSUHYUifP5YCfYgXARLkbml/0u4nRqcfAsyl4wvM7WkSb3s
	kmvK6as2srfINZFATj96IOJHIo7D1m+H1h2OMj1k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649888878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rOZbu1W75NfO/pLTzH1RuS3YmKIrJmz1ngAaVI0BLxE=;
	b=DF9qibQ++3qyg209EXcDRIGGGOjtT7GwVeoAxMk4MkntX2sNeIjXA3FY+3rY6ylx
	tdtx5pLru2Qg/ABw2GgQK4w5eCnVREK+fn5yDMwoJsynP/zYjOVov8m2hDIjqQCkeIP
	wtATkLDU77KpaCeXBTelyxJhlAAbBV0l9ugoaVEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180250a5ebd-69c3d79c-7676-40e4-b7d7-7e64ca0559b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec98f62b12c5cf1279bc0692eb66cac58056603e3caf34e8ed05492b568f4eae
Date: Wed, 13 Apr 2022 22:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649888878
