Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 722211B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 07:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648108738;
	h=To:Subject:From:Message-Id:Date;
	bh=JDXHedsXrzj5afB8fT4YNBlU02dxoCUMzmbivPT49oc=;
	b=Nr7ENmSA61MeZiq0oScmjs7uap0oy+y7eicguHNwPzLK/pmFaO+3sUvZjgaSiHjt
	aVyXcugJrB9i2S2hU+6lmELL7X+U8GgTWDtGWlIhiUe6KNQ66IJiafa8MNdJIBxU/9k
	MR7tY1/9vJroIgF2Yg3vXeAB0/TEJXYiC+dwLSLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648108738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JDXHedsXrzj5afB8fT4YNBlU02dxoCUMzmbivPT49oc=;
	b=kpzNRnqdM/1Q9pU/pKBxfr/5CnwwbUrid2wXbTTeiVEohpL/RzkRNq3dhqdhfGtI
	P1FLKieIJTWTxvwShlWv+WkhssH59JRwDr3Qc2ApCs2y+j9n/jqz07xLPnv6/HUFjIO
	NUBAyNbXH1eRWyJ/1wTv4qaTH1fe5tU4mxc3rNwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbaef96d5-5ea16593-95cd-4f8c-9586-4070430f4957-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b6176b237067d7dfd3f9445f5eeb92f65347403ce09d92b1e168f968126eb0f
Date: Thu, 24 Mar 2022 07:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648108738
