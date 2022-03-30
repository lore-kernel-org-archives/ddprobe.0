Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4F12F46
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 21:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648676818;
	h=To:Subject:From:Message-Id:Date;
	bh=cDONfjRAiZl7ZBzybgMY2RZcOTO7XSThidlOS/92xIk=;
	b=BxUZPQLomUADPzc4vAJ5os32WSkTJlV9TbD1uS9rw6s/yBb3Hmjm61G11tf59svn
	AIgRsYfjE4Ia3R5BLZKJcafYgEdpoh+FQzvemVI9NoyLfGldlC14f4/jStXtv/UDb1K
	Yb4m464JTqSwQGy1UdNJDCrOYge33vivXMakO2TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648676818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cDONfjRAiZl7ZBzybgMY2RZcOTO7XSThidlOS/92xIk=;
	b=NrLcIdLKGJwl+fSawhSunnFWWdomPnnZRfGM5ocbAWtZWhoTvkJsDWNJG2YFjl+o
	BhLBle9EWv5rU9wNfEr7AspQNqj77IHaRcqRqfOsP9AxMGDe86LGFnJsUpbxqmyYCpe
	Ky0/zauaDYWb54JIyfq4iNINPMkhOX0fWVeQFJSo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdccbcd51-5d17c58e-8f2e-4ad0-89a5-be31a608bc94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d685117c0a48ef0a3a8717cf7b5b1e022b78d8a7e9059644701a0ec3b4b65655
Date: Wed, 30 Mar 2022 21:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648676818
