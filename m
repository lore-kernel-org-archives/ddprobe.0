Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AFC7ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648007184;
	h=To:Subject:From:Message-Id:Date;
	bh=MHGzHsPQn/9RHyT+Q7kk8xuwzn4FMSYouQW89yQkKH0=;
	b=IyufN83X0rlDxxE0gvNG3kbKYfg5OXGZXyM6t7sYiLtL9YobL87UHQ9Qp4jWQyAD
	UaA1+eJtKaAnmJPXyg6K614ZGNC06AMhstZhWbT5gkBt4S63lU6iadw4iY5X+ggSBDb
	un2dYDwoe2wR1DGDngyiT407j453FdPMkhrQyMNs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648007184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MHGzHsPQn/9RHyT+Q7kk8xuwzn4FMSYouQW89yQkKH0=;
	b=PtarTdg8CjaM2ta/mgHoBGR9SkU3zo1meh0qmoQE57WmjYE6L/O3vC9U/w/Hh80G
	VpPP2kU/l42qZV46ioz5PjwyU9e6xGBjqgjB6TLxuP2MDOeBupIDVYaka7rL10heRK4
	u7IjhVbatGpAaZ2gDKWKsHwxzuYcGf0yo4zgVRc4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb4e20169-0c538f45-8669-4ac2-ba8d-5b8e05e8b70b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8393541d9f707cd10382b79f0b559b00b9f5fd73accdaee4cdf43e2b6c5a4a6f
Date: Wed, 23 Mar 2022 03:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648007184
