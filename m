Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049CE184
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 10:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650019438;
	h=To:Subject:From:Message-Id:Date;
	bh=V/e8GbcOAMU+2aTcJBUXA/rA4OF//YIwCIcbuJta1xM=;
	b=D2x/CerHcx5X6kxHT0yW/S0+5fc6dTlDGT8NjEHPqEcuJ6Xp9ju4rNV3HNN3w8ee
	7wYuTInGeWoJSulo0waUedK4FTvv48emdMe5iX+hSU/fscbp99PF/BgRx21NDGnScdP
	HMp5smBvH/094WTVDRw8JyhEt+lgE7JEjXjBed48=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650019438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V/e8GbcOAMU+2aTcJBUXA/rA4OF//YIwCIcbuJta1xM=;
	b=EqxAgAcQ73tufBjxvMhEy85pGls741JN8gYqR9frGtHwfIyPYCzG6bP4nFbGmyMr
	32QaOy77AMjKO5bPdHt+rOlKFNAYNj6T30v6UPLBIU8gWNUbVaOq9JnFDZa30D8kZEJ
	UMsd32VoY38OWQiBbJVHzdFXOZG5iL6v/GH9Bnuw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802cd28eae-7d204f4e-e8c7-4516-812c-4f7ef827494c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad01ef931b55cde1f8e966c2d2d46225ac73f4ee70a2fb36355f77e8e924aa14
Date: Fri, 15 Apr 2022 10:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650019438
