Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43A35160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 12:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645360584;
	h=To:Subject:From:Message-Id:Date;
	bh=wVr1yepuWw2ojfqJ/hPUMYBUNWqMSLCQe9K0Bh3Cl3U=;
	b=j/4XtRb7ait7OmK9bgBFdmeAqJC9x7Q3Z5JgL4GhVnP1riz+dLYZeaLe827LAZVX
	vBPdOeLrrWiEHnN2tMI/8gvecvGuy/VsQlH4zsxUZJt1/1BePhNPQ1TIpdtYV36R4M8
	QgXbTRUpmeVGSTdvbntR8ut7mnguLwBLvS1cRREM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645360584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wVr1yepuWw2ojfqJ/hPUMYBUNWqMSLCQe9K0Bh3Cl3U=;
	b=Q3u6/5lh1bums9oIwpaOaTH6E3mqEtU7KmThfLn9a+lL9hd+GP5q+12BmrLphNZi
	vzzHjUZ9leNb0s2sRSqZ4NQ6jDKcJFV2FdttSGpOQevdEUXZBD9f4MtPyRFziJoF6fE
	j8H1TfnCsoskUAtsTSzVGB+cen94W0k1qqyzV6DU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1722181a-137cc195-6532-4588-8005-a618ade2d50b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7802f8bbb4c37318ed30b18770e1703e0b47ea3414ef1ab4d4108d5ebde27f6
Date: Sun, 20 Feb 2022 12:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645360584
