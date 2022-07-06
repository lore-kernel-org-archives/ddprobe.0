Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D1A7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657099012;
	h=To:Subject:From:Message-Id:Date;
	bh=8xaVeJNsJD+dy47ERsfsTtixUb6zo/+yskcjlut+iQ8=;
	b=bg4I0EAhDsI780GppmCiIxAikQJ5szF+8GZbPlxPYCFB8XFRQ2VqUYccTvT//FWI
	j1tFZPDzgHTF1atJBf9k/kqa6kqsTmfdQkcb5LHLGrLLt1voXkHOZE61HThgTevinf3
	EO9ZtksPpaXnCeHoJaK9WqZdSi+yqWRBshDqlNdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657099012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8xaVeJNsJD+dy47ERsfsTtixUb6zo/+yskcjlut+iQ8=;
	b=dBPyXtYWmoBttvJFPiRCk3oHZk/8A5kOYTJJm1Ymq+NdfkgKdhgI1TduybkMCtVe
	WAp+87cXmEbGMqIwO51wyS2NW0JoJTrHZCLPbrojD4ZcvcWSJtuzElluEEkvflJXh2Q
	hwK5ZEo2QqdFIV93fhS1dk5ad39dxq7J0c9St4Uk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d2cc48be-eafb4c10-c28a-463b-a0d5-9be2221663fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 067cbd17f22522e86dcec07c00ac2e5a4fd45099a3e96a93fc8ad937b9db1892
Date: Wed, 6 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657099012
