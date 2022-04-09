Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20C27EF
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 07:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649490058;
	h=To:Subject:From:Message-Id:Date;
	bh=nHDYEbYa3a2QXBtH2Cl4tHKyv4rG4SUPnscozhSL1YE=;
	b=kSRvfgneTaITtWxo7KZHuzZXWeddj0pPxxrvrFsGV7wPBgkqxj05PgcOJOWRdvzu
	+OsyuL4s9Vwg/fuHBGlgQx0a+LXOcBzQQ7HlE8ZZDnUX6p4ispedaajyJpvVU5LwHOC
	N32lvuLEIjfPVjImtydTBg04VZhy4BL0JRqLSee0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649490058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nHDYEbYa3a2QXBtH2Cl4tHKyv4rG4SUPnscozhSL1YE=;
	b=SdOikUF+Z4c83xHZQPpUrcZ3vBweA2Qdpkqj589XZfvXZjLEiIWzF8RQeat5nkpS
	tBn+8leOZcv6Bk53mCjjBc151KTTz7L76NYFAjVqTknrQ6Uq2HP2M2rUnpRFZTStU81
	2/jnoDThZRRpPecCSXCMkHAHdcF5+cfvsLyM/xe4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d44dc34-48c25038-431b-4ca4-8cf6-5e0693dcc401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d3cda1b65f761ef64944a4f852024b2e24ac2de92557cfada45faf3d125aaabc
Date: Sat, 9 Apr 2022 07:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649490058
