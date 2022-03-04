Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7575AA4D
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646391384;
	h=To:Subject:From:Message-Id:Date;
	bh=APkfW4vRfFLAQ8IcrGJkq2a9bY7NgI2IgSJ+dYx4/kw=;
	b=a/cT06ZNMPeHE5/LNByusYR4zcpqWhxMoXoCFI3M90jgXgFi+3rxFceCe2r/0H9h
	1ZI6gsua3XrxhIkYai2waj4VZ4V1sqFVu9HxiLh5i5dT0G/FpHiZYypTClypS0TeLrg
	uVujJ1eVPzgi21OyqHu9QOqO2FHgPZsC565fydYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646391384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=APkfW4vRfFLAQ8IcrGJkq2a9bY7NgI2IgSJ+dYx4/kw=;
	b=YtFvpSdolwbtMmYop0RF8WEZBt8eQtcFwoBwR1HTwCb2yVnwvpBMSnRvoM3qZwyA
	iiu2ID+P/IKjPEXl0oT+FZzJoeX2S1Fo74AgXZ0gitNvaVBnZRDZxsPuanl/M+Ofm9B
	KLfcg5MsJh0T8vdn99oGfR0+nv11IQqJEbHplEwg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5492dab2-f0d44633-9933-4493-a1d6-1edf52f4c079-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a453c099b872a19fa5c6199d2e801a917fff54d65dfa53363df428c4f0de83f6
Date: Fri, 4 Mar 2022 10:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646391384
