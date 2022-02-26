Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A30369B
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 06:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645856485;
	h=To:Subject:From:Message-Id:Date;
	bh=yEHZDBldcy2+VR0qhoLKlze7OMuLgHnuWbh9ayJG5L4=;
	b=jbYgWhnYjOzN0UhRME/mr1JM3wZsnjlQ7L5e5JQlN2zihLlkB20okrkw3EFsAYak
	J+Y+UDRmF8wskzeEyS/tcier3N3cP99FvM7WNra592+sll+8N6Yfa7/gvlUEQwy21rX
	DhCP/1c3yJ5b2cr9UXmhUUFzpU1kgUZHgpoDHKPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645856485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yEHZDBldcy2+VR0qhoLKlze7OMuLgHnuWbh9ayJG5L4=;
	b=l15wMd1exEKQ8hxaaJMo6JA9ISqpiVHuSsCLG8fT02j+cWfoM3obN4clVhm93qBE
	DDKpxm+TwXwV+CtFPPbVvOxMS82eiTSroXUrvg4m7LnYh0P0XIvz0DxzHacavBzcFx7
	p68OR+MGluKGkZ92INV8TXyqtHLoB26MbDSA5JRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34b0ed81-7e4fee84-5710-4779-9873-fec5d33d6e18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf671d87b6c7e6e49d46dad70ea8f09727e45751fb877af2b852fe9417a92c46
Date: Sat, 26 Feb 2022 06:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645856484
