Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEC123AC
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 23:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649807518;
	h=To:Subject:From:Message-Id:Date;
	bh=BfbpNbWvWTmw5P0SrVklxQz/sAB0U/cEWc+ct2rRO4U=;
	b=gCHG79ZThn994nzxqP6cItSQGL6wPYNO3s1aox8VxJ6Hgg53izQO6HyDGE5NepMe
	G6t/v7aKJG9gQx+qxFQjI5mm4vFyD2EsofXQVZf57haTR7BFNtI2Dli6Op9+IR9F2oy
	HOzhEF0PEkqMCRTX+qDEdkcssDhdmcAuOc73iOQU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649807518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BfbpNbWvWTmw5P0SrVklxQz/sAB0U/cEWc+ct2rRO4U=;
	b=DLm3lmg4GjGfrN8yQyKT2Pwol6G1lbu75XAWP81gz1Fp2hlUpen6GgdsKvEIW6+t
	5D9T5Y2vruT0cvMmi5IkOGGtsQjH8zGP0sF8nPRZLE1A6or9BKD7cdjdI5WPx6RWfSp
	ga+gPikQHURgewviNTNpdp/wydK1zh7HBT6wTrqs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802030ea2e-16d67c4a-0d07-4c8e-a4f0-643c05266d05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5b91d02c04ec220c8b0240c372101e25fd3b307a3e0a84f3a5f333108f6ff6d
Date: Tue, 12 Apr 2022 23:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649807518
