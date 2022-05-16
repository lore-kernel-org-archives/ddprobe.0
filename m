Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA7D11376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 19:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652730839;
	h=To:Subject:From:Message-Id:Date;
	bh=//AEBb2E+c2DttA5RVU2VfTkOi7AYgEIfsrz5AYn1qo=;
	b=C+FraHAB+Whf2t8528RNveyWHj8+Zba5DE2a7hmLFZ7KMm6Ax9VhOoW0TYgVUVe2
	iyWOTLeFvBjf2cYdAtd9d5JOXdyPD3crwRBktx9PIO9bv+9oSBhxeAtJJkyHLdgbFTp
	Wu3jkIdXz7rv+JbmMcuOC2DG7f8IbgL+OpepPwdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652730839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=//AEBb2E+c2DttA5RVU2VfTkOi7AYgEIfsrz5AYn1qo=;
	b=SybzxcdIovrtACgVtZPwXlTAPD5jHNc9VcsaYmLkxbG9dDVTI4mPzpBd3i/cVqyp
	ORywHNTBqVGFOW13B+HAZZCPejTMwUwYtpYDxgRHzCfZn9HdD6Cka5RNiGMi/NDH3F2
	8hAA+2GKi8n3tohjQC75q4cWI5LQwTz42+3bPFBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce6f411c-745e724f-8d98-408b-87bf-d403f7e7dd15-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4981c16332686812770ef5d3874acda0a312673030998a39dc77219e14622591
Date: Mon, 16 May 2022 19:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652730839
