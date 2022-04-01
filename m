Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10A567B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 07:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648798138;
	h=To:Subject:From:Message-Id:Date;
	bh=UP7BjJLHtpWwP1lXrg81WWZTD89VWVDC1OttljP5KkY=;
	b=k1Hl7Xfq9flT/0VurmxW6V33tRzp6DG/LxNoQiZQIL8wGbJMoSGwgoZXr40ReJ1c
	nYRcdYAT4L9l5wolrzKZDXdRkAKLAM+KBCcOTRYF+BG2guvcl4rn5gar/R17SAvn9pQ
	r9rCe9YJepcQ2sdvSyWOJ3B9OPOhuy+eyfyQ7cO0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648798138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UP7BjJLHtpWwP1lXrg81WWZTD89VWVDC1OttljP5KkY=;
	b=HEg3ck8lIAGcSH0OKiUgj2mziyWsJglNst1n6JY0pBSPSMbeihNnskie0cDdhn8x
	DHuDAlAgMTZdHuMUexW+qBMqwLLnJ07hJrC1ZjOdSxF5ylsKALLjRObYY1BMSOoe93X
	es7bd7rs6Mno1un8XbBc7PyKb5IbxI6fIA1tiLso=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe406ffa6-8b6990e6-bd69-4874-b3bd-65fa06128c21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef35c5f19db6a2fa479fce5c69c0e2dc8a0ac7deb8c47313602d908ef1c796d3
Date: Fri, 1 Apr 2022 07:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648798138
