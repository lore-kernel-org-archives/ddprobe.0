Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB2C33D6
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 21:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650923878;
	h=To:Subject:From:Message-Id:Date;
	bh=1hHBULj6JHmR4U5y1Jmnbv478btxYQtWkR2KbUM7fkA=;
	b=PBlUz3oK2lzL+pOezEkqfYX8O+c0CCsBkxPqyP9b6V/rQX6ykjUxCoTIM1gMKB8S
	deOlMlFdLDsNlmc4Vd99UDWGPRLgTJrOQFYyLuyz/6EFglYY3Dueu7dOVz/MJCdx+2R
	sC+fh7wfaOBBRlFaabiyScNpKBU57ybUZ6emAMxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650923878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1hHBULj6JHmR4U5y1Jmnbv478btxYQtWkR2KbUM7fkA=;
	b=PnzfvwMAJx5MDNpvfaSfMgieXrpDBgjVE6oY7MnWj29kgJ6Ye/BvblreS6mHMK5a
	1/CHXgNwB4oYB3TP8c1Q74zH6uZayF22yXs2j9w+JpT4VHTcK8RbQZsfT+fh1IU+akn
	ZqLvxoj5cPDBF082uubdPm4xxYNHLlHDR7CR4+GQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018062bb37c1-afb0565f-0131-42c1-b7d1-68656bcda42a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 078c63a89d5690e9da6eb9426229eeadc720991d08755a2114407d8b27cc831c
Date: Mon, 25 Apr 2022 21:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650923878
