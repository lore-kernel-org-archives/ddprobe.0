Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96AB32F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647594684;
	h=To:Subject:From:Message-Id:Date;
	bh=9wQ1hqKCUoeq+67ZLtpS2dlV4QvCe+1gvaoT9mGDYVw=;
	b=OJo8iXkXZGfCSWKOQZsNtYQ5B4xvJKyauzO3qchGWeGSJj1VtTfByPqtQFBC3uQs
	Ug+e6eQqZ0+zzL17bpIjjopCWeXraZdY8pg61pYtFCDyUOnEXd8/LgvsuH3JCbXihR/
	CI+l8qE+pDxfmSiH4YXTILTynr8Z35MA3nzI57Z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647594684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9wQ1hqKCUoeq+67ZLtpS2dlV4QvCe+1gvaoT9mGDYVw=;
	b=gN4gdKFtjtsTNogiSZetd/bABp576KII8diXnQN9s8yfmmXHbK+qR9HxnwH1mWwz
	A/PRrthgPIdspiWhycxKI9r1A8xuu1RIEYkL4XHN9CEcEaV4eu11aqKvmPcIP9eB2Zd
	JtOPLN1v9byi6LDzMVOplfH/fHBE39MpTDkgGIog=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c4bc146-ee4c1b58-78a5-4575-b17e-db79436cb926-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa7e3c7979b2573725af9172522276ab534d184b9749986bdad406e7d14e288c
Date: Fri, 18 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647594684
