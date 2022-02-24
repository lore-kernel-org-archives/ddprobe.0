Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B26185D
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645704684;
	h=To:Subject:From:Message-Id:Date;
	bh=+dndqA8RNnm+NM7g3oxRi3k1yJ8B9bhV9e3Tt7PgEls=;
	b=d4+eg3bzwSBrcKEAXOJ3KyhCb8y9OGZbnDA9F8ybgaNynlFNKnXU/wdhLHkNtbpf
	X1tq9ySpmhuHOk5wj1er92TXLt9An0Ozwsq5kltmA3ngn7oa92MG0QnZigRHwwvliTQ
	wVdjuN3Y5fRvGpdeEjU8IsfgMo1/kC9yqamqOsO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645704684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+dndqA8RNnm+NM7g3oxRi3k1yJ8B9bhV9e3Tt7PgEls=;
	b=JCkJDl+QJcM8hUfiTe/4+SLeEZ0YEJaD1BI7MQ630z5sd8+tGHjg5IPzxSQ4sakp
	omxInB86J1hmK1VtisWUan9IDkp1OLjQefC36vsWd9z/U1k0INPucZeeoBteAAgAekg
	YvYpCCK9K/PKSwMuW3PP4pBDstC5ovd/bxyw3Lzo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2ba4a4c7-c9df132e-aa49-4ee0-bb0b-02237eacf3ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4be2f5c0ee18efb6641451a7cb7ad51efb9bd5454b143629aa456964171ae6cd
Date: Thu, 24 Feb 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645704684
