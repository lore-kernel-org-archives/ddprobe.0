Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A973433E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 20:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651090858;
	h=To:Subject:From:Message-Id:Date;
	bh=5xtMtxU6P01fE2rrO1sFliZaO8OTl1iT0w54Bt/KIGQ=;
	b=Fy6/wuXxKL8pCc0DEhVYlomTfk+jcTFY4x8O/fXCcGR6gEqNegaM0pG8FxuShL4W
	/WHAd9a5qat6LhHsgmRFnJiW0nRusrf9eC56myrVFP9HvcRphOLJH096SRCVjzHYUxG
	0MZtcBx9spqqFKC/rMvfy4PRNLuuZaWJ/fw2ejPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651090858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5xtMtxU6P01fE2rrO1sFliZaO8OTl1iT0w54Bt/KIGQ=;
	b=BxnpWrWJl4wkdGNNAPEwiGUKVDsUndGofTTREM/icRDep5wh/iqv1Pa4yM3eExa9
	q/5PL973U7G3e3eREirq+AXtSu7ep8zduU120IDW3ufWjT1KJxHMpmC98QbrQjzzR2c
	mTLj0cq/gpD73L8INYFnNTvMZmF6ShdSpv4hGuCs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806caf2139-51efff05-1542-40a5-9adb-4aed94286a73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bba914aae4d776d6ba72a693370d6f55686e6e5737138bf895513e58c5a99405
Date: Wed, 27 Apr 2022 20:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651090858
