Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714FDA46
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647174384;
	h=To:Subject:From:Message-Id:Date;
	bh=wUVbHJv92BTVuK3VkeZCMb2dNxt9S/ILJL4L4Ls6MwI=;
	b=ecV305XVX9lEZ2Q5+jdBS28O0uDyaX+IqQ67Uwihnt+prehwCepfT+0nrwv7htXi
	2whBSrigoKsYS19d9BC/Cp473Q90jlmsgZUypV0Ms4Tj+qJpjkIyQooMVNDi0ViJIki
	LUIE7AKKuBpAQa+2M64iCxSi5/o5uQ8q4hFR8jGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647174384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wUVbHJv92BTVuK3VkeZCMb2dNxt9S/ILJL4L4Ls6MwI=;
	b=FgdcsLdU+qipYu68tzkl+RzuhEZlNbo5mUeN6veV/gquDB6YMcSRWyjsiRDcub1O
	CEf+tuuSsUI771ENQfdHiAFzmwxrWpFyHQ4P6XL9OAzE8L4JtZyjSLYgEjcg5qdPzqT
	2kfowelXcHGjzROjFrmmt8M9to3xqh5T4yAwcM2M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f833e7c64-e4f8276c-559c-4e9f-a54e-a6d9ccaf3206-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edde8d28152830fa9899ac9b4ea316e049b37b476bd032b545430b4399630c9f
Date: Sun, 13 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647174384
