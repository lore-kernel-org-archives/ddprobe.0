Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208FB160
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 00:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652314799;
	h=To:Subject:From:Message-Id:Date;
	bh=TxtQ0W/KXbUpiBNsDrl3tdzKwYNCi1xQw09HmPhOFVw=;
	b=M9QE9TvfUKt7tKkb0VBbEcG9klDbY3Xw5t7aG7qqXr+gvPE74TvQlwq8Y/imqVjF
	W35AYwSEAgLk+YaU8fqc1wHxQbqCuxd36tuPdtExMnrTfmAdsXGhSfTUGylltR4Rg4C
	j1nmhwH+vhm56CM+JEv56IQWSdiKEbQSYvxVISwg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652314799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TxtQ0W/KXbUpiBNsDrl3tdzKwYNCi1xQw09HmPhOFVw=;
	b=SgcThVQAxDha0BmNZWMFE78PA721YCt1JY2TTzU+ZKN090+Ejqy7Jt8VcBaeZGGC
	7OsZU0mbnCjHAzVbPEY4W+ifQIE5NLaaJ6qSrjgj5qopeLT6bbrvWKP8na5212JhUpJ
	xoEk148M4b/I5I2gAw2VBU/zJmxDs+R55euJ0wr8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b5a2fcb2-94895e1a-eeb1-4b9a-94c8-a5443fd71255-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5032916fbe809c18e3c8821623d9496425966761a522c23b991acdccaabf960f
Date: Thu, 12 May 2022 00:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652314799
