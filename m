Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525BF1361
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 15:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651159978;
	h=To:Subject:From:Message-Id:Date;
	bh=iVQFlHWRvroz9LWsG0J7x1a4/TPJhw8zxdA4jjnE82s=;
	b=eweq9DnJ3Xidv3bZ8gXmfwWmNj5q/eSnqtwePMJEu1s4dGcAfxFzyiLmah2nmXWq
	+HmK07hakBv5At0LLw+rjl3yKB6Y2PW6PygEJtmnGeWCvWp7V3nJZrzE5+f+hUG50Ei
	iKgv0e+3Wj8QhvZgT6dEi/l3+SlRLhApNqn39dOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651159978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iVQFlHWRvroz9LWsG0J7x1a4/TPJhw8zxdA4jjnE82s=;
	b=Q6HHx315Ex3+p25OknEs/YfzqMYBAcC1Z7Mf5FarfImxGDKmEw9UAJHHXRxRoLFN
	bmB1lHWoZ4/VAmx0PgYSKqfvPbYQ02ZOouJbMBq6Xfxyu2nexi/J7dEPaIXWI7TAWur
	s9WnsiDTiFbc5mBUIVBtSEOeEKW/R8VeHwak6GKM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018070cdd136-a1a9ebd8-4771-4293-a8c1-51bdc6ddab0e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15961ecc1794b26224b9f50442b188df90f1c9deb2610cf8839f92122575a4ea
Date: Thu, 28 Apr 2022 15:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651159978
