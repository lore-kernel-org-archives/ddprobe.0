Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFFD28E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 00:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645143385;
	h=To:Subject:From:Message-Id:Date;
	bh=dmJxJnZbtyQ8fwzybS8CpjF8DbyXXQ0cPa7DxxROIqk=;
	b=UxI5SZXiszMVkogBhNSagsOc76lMf30rxcG1TrXyCa8EXCR+e3N9H3NPXjNxQj/V
	elyOwUlqv116oYM6x/DjdLy2XygIxh0uvPzmPCsE1LOaMWaKCkRA9jO2MGJPE6f6/9H
	19YNGzYtgRvJOgj49pAtvIAuAgOJRfYvdmdIfZKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645143385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dmJxJnZbtyQ8fwzybS8CpjF8DbyXXQ0cPa7DxxROIqk=;
	b=C6T0WV9S6DkD4HXTbFmZO0fL2hs3tc4fci/pzNCqQv64F7uovBvbqauwrzzONPJL
	K7ha1efFMw+N/17NBZyPbqxKo7fNjSkVGbaN/JTCDadPI8z5NuGG2IHdJV+EfWXIVze
	WFW/XbuPs4ufSSzhlaTSz2b1m2+Mj3FxVAtLpN24=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a2fe2fe-a1e3da4a-5a37-4a05-af4f-05bbd128287a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 022f5981eec13231b4c203f30170d0a6a7705a0bb76a8cfb8491d9579ec94642
Date: Fri, 18 Feb 2022 00:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645143384
