Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20730625
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 09:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651743418;
	h=To:Subject:From:Message-Id:Date;
	bh=x+gHX2Rbwm82yt9gHflP1WKj6lmLyVTnRjbmDqoFWco=;
	b=S2w9bFYxgDf2YdyHSRj2qzDrK2VnurJMPHffmUDoR8gZ8j5ePyX0pS3JrIiNp4MS
	b109VadFA5oywuO4B7iMvTGpVWWhVNEyX44vceCSOxXpMOcUFIMhmHVE5ZRBUMYdFk/
	fLnzi8IUNUDBWLDlhSjnYJkNbrjjoiWhk7Bt6xig=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651743418;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x+gHX2Rbwm82yt9gHflP1WKj6lmLyVTnRjbmDqoFWco=;
	b=GFGa1xQ/QeBlhcpROxORqybFdtqj/8SRwDfi3lDKXk9e9e8DdsPoL5zId0Mp6z1K
	OTl1IpLqq7ymqxTlPmMk3ieG6ueTbjPuQuvpPeqY1pO1CI8GnNDnx7vLaUcY15HHGHZ
	8Isp6eeoUgzPe76BMmHtKCskyuJmVHKxSvx8z9do=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809394678d-0f7c3754-3296-4043-adb7-da71826da1ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 256083c55ccf3ba0533ff98de07ff8da658d745898c5438eebaa080d24d19697
Date: Thu, 5 May 2022 09:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651743418
