Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1823C35
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 17:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656438412;
	h=To:Subject:From:Message-Id:Date;
	bh=K09AGNNobN6dI1+q3xnnbl6D/+M7M9cZqNZDAzZeqAU=;
	b=NWfWVBe2PRstKsuJXaqu7XKit0/GpJ2cpXcbE9+PmhYmOC1ZiekpeAcLbOsrGfq6
	BPm5ZYJi+Tj7oBVDK6e9Fe5oYHKP/srfxviUHQN+idBc/Ju2/yCx0dcdUG516NblDRa
	ZMU4ZSb9XDtiL9V3tBwkpA9IeRt3nl1HIN+wVogs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656438412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K09AGNNobN6dI1+q3xnnbl6D/+M7M9cZqNZDAzZeqAU=;
	b=JMxnsXmIraEUWCUXQ8sW4d+va3mcxWb32O4qfKwHBq6TyYy+u/AcOksBQeqoYfUx
	coMJdhLavtIW7YTjsUh/rVTt2VBoH0nTy2k2V6E22q6EZLYEnkhOIIbtw5aUuMUoFrG
	wSmwPEe6e4skRiSx27uFlGHxL153rWYY5nnXtLQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ab6c5404-a3fdbc96-e2d8-42fc-a9ad-1ac50947608b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 97caca4f65d25d6efae8b4a23b140780dfda13e951804e0d535661ccca29ea20
Date: Tue, 28 Jun 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656438412
