Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073FA6027
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657057012;
	h=To:Subject:From:Message-Id:Date;
	bh=GT7kG9/6JJoCHbBrNpEC+uZ+g7B4tGw8svel6oT8NTU=;
	b=hvF4i7OoCiBE0IUgz/iWbL3y3fBuX7vaJByH2aWCAhw1IHBU8gYCGeGT29hbpP8x
	8SWwUid70KgSy+SBB8BMZQ9HvM+vVQ2m85O5X3K1F22+nE3hxfs2BjCt9UDfrXJATty
	Z6RXmrLRJ91biSD80VRwdWeHCVle/Up0zRnN7Hsw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657057012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GT7kG9/6JJoCHbBrNpEC+uZ+g7B4tGw8svel6oT8NTU=;
	b=hWYNFNnr1ZPSS/7Ti6lkcAxe5l5Ga5ffqf0W5TzySJ6UkDGlayyxQaSYIwYZuSx4
	Xgzs6Ms1j+iADuymefLl64BLYosewF/4Q1UraYrugyDytF2Xjrc5k2oiqP4QScw7DTS
	JbCeZTtSviLDid7UnxwPPGqNaK/LbvVC2Wzx/uwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d04b6a35-911f668a-1473-44a9-b571-09c68f68e440-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f9faccc4688b14413052a4e10931c082bd0757c838f621ebe4d3341088a231e
Date: Tue, 5 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657057012
