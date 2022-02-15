Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 910B41561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644930084;
	h=To:Subject:From:Message-Id:Date;
	bh=Ny/H0kkocrPuWgV/jPF7Gh1XjISxK9KFpevK18rOfZg=;
	b=X0EhkUEac0QNxAR6f1wzP7CUfdwk6Lq8Lv0iMe+fPn8SOCZSC+ZLNjH/dpJ5CWGZ
	STedqC7Og+lX27BKMHyYBxLtGnoIwdA8SkmOMrTClh0yTX30cIG1wYBdYlwdN3ZDmG1
	ppYov/B1GNYHEUN2Q7HOZkc4cPbVX7UuCl0HIZvA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644930084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ny/H0kkocrPuWgV/jPF7Gh1XjISxK9KFpevK18rOfZg=;
	b=W4aCQhrXl8Op83roLshFxo5UjO7Q/8x6N5WN2c51SXvQXo+rD+898uIAno+0u8tm
	CwTpriNk5/CJjY2NQ31AqPtW3tVc2iKT0Pb/TQUFMu+uddWRDA8eHqtKpKv6nBY1aSD
	gIdsDlOjxNzZC85Y4YzPWxLLlCXmlTzJBpJiftnU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd792f9f-b379f7f8-dee6-45df-8e88-fdb5191fe8aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b38d0592c5b1ab873aff3e0744b340f0ec07354d39ce5b7984f4abd61f0300fb
Date: Tue, 15 Feb 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644930084
