Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E18AC639
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 13:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650202918;
	h=To:Subject:From:Message-Id:Date;
	bh=D6fRdKWFgkq3B34rUQqiBo5p6OqydjZmm7ifdij7l1U=;
	b=abLN2fyD6mSX7CGBf16hpoEpc9LIOIKwe3jGSNCJkracphLP7b04z+dMN5aqcYbR
	yF5CoBtjuHesLXc2HiF1xNJI0BOFa3rwsCKjV9D6RVga6gW/m+yqPr2ZSwEnF5ciMrU
	2X74YVC0aO3yvLgRzjkwctvkwePzJATcMoXFF6Z4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650202918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D6fRdKWFgkq3B34rUQqiBo5p6OqydjZmm7ifdij7l1U=;
	b=AiqFbRhgi73hF3f6Ezy8ziBY9hWTlxApdSQiwExM4WwbqPAZhpD2uR/yRnpWLuay
	cQ5pw/kQiTsR4xP73AnxtSkI/W7+Xg9ti5x0LefQGIvzAr/UMyz2QHpDOELaYMWX7+N
	+KyRE0q1eJRZJKVGaoaNC4CXVhUreqmiAajiBrG0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037c23d82-526dbd12-fa21-407f-a10b-aa5e9177023c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf80aaeea9080bde4e6b13aae3dafdb02e7ce9ddaf71b4817c7d425331010ccd
Date: Sun, 17 Apr 2022 13:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650202918
