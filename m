Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2599A7B
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 12:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651147978;
	h=To:Subject:From:Message-Id:Date;
	bh=sLl4wLOMnOmDh0sUAiXhjS0WJPdcEQcgdywx3nZbOBY=;
	b=YlpdD4ge7KijWTxESaW74HAAIdhmfQUGe16LfVbUwb9Gqgzpel5ezLdtW1jmZ2qi
	tiAKJeDdDTUizpGlTiYcnfqyFaH5tlbWzTZXc4f/K/DzEtahf/HCBmfd2VbKQru8Qmj
	hh+TR+NIbicg2xijXVxfb0EUDG1ugdvTnOSrlg1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651147978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sLl4wLOMnOmDh0sUAiXhjS0WJPdcEQcgdywx3nZbOBY=;
	b=gGzH7b/hLDoHI/HE0q/h13bF8cUZUadnLMnM+jddUqHVAm2qn7VgK3U+u5iMftEr
	e+k5aEu1Vyio1Rp5DugdlGkkDJD3vwED4XR0NyD0ZH8MxKYVzOnCUfyZAMeDI1n6HzE
	L9f9nWSeav/7dx59HkyDDNdSqXa+QHmdjcsuSQuo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807016b648-02af2880-bd05-450b-86ba-a6e15f537e74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 793b432d38763168b539cf4a3107a1714e23d3f582d8f912c7bbbb48833c43ed
Date: Thu, 28 Apr 2022 12:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651147978
