Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BCF233D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647783684;
	h=To:Subject:From:Message-Id:Date;
	bh=EhVt7pG+QAwSMwLM4qcSouuES3YOuqInZ4keWU95UEE=;
	b=L7OPp+qsPaGkP7KlaaGuuiFNm536fL2oS2SiW55mF5VoPCVdkTNIOumLYc7JO6Mn
	7KZbMxOjfIxN8fm5cp999YWMMF+YSl7WI4DK04szyAFRW4AxR1L9yVhw8nkaPVbcfmV
	IYWZon1vQa7L7QfbCXe4xTRYWSlcPjUpFVfGKM14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647783684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhVt7pG+QAwSMwLM4qcSouuES3YOuqInZ4keWU95UEE=;
	b=f22mVT4geoAnbvI+K/fTxkagbeRh6TSE6V/Qc+ZeXPfKuoelK7ek96d1SwNQuLHj
	N1tbQZvLr0qU6XAPJQafF6czeuW8rZMmg7hAIA2j/gPgVADnowH0hA7sq2EPyXb94Fq
	mGBR9C77MjszLZ/wTpQo702+FD7pKVicdoPlE2so=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa78faa86-24fef314-0b48-4ea0-856a-846887e3920a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0280ed41a7acf7e4f1c0fb402a0583aa853e75002557f06ba837684d51f35853
Date: Sun, 20 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647783684
