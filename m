Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2574F37B
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 08:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657183012;
	h=To:Subject:From:Message-Id:Date;
	bh=mLJTbot3LPooEJuaJFYwFQBVfqO9slV7E84Tox0jTgs=;
	b=de9Yl42F4Trb4BqZVW2fzrdDLbSGCY1M3sFtCrWhxXAX3D5mJza/37Z5gLgNLMUN
	bqRwI4qicoL3o+Wpv/cLWUQgTno4wSHpfknSHQH0YdwOuNojfmxmphT+wS1Fj9OrWUX
	DSMuk9LlJp8UQ8sONcXZeSuOlo1eHnQRR9yU3/dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657183012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mLJTbot3LPooEJuaJFYwFQBVfqO9slV7E84Tox0jTgs=;
	b=XEZDz9rPe0/ahZdpvV78eockNMjUO7bp3OiX2Vu5gewgiWHLnBQaUuF/Y+AjizZW
	sgTQopj1T+plIWW7VFEaJbkV+ptypREhEQh50vCTJ/6f/1QCoyODy8AZgRT1WsvgcNS
	YFPy2ksXpBCpr7uez0n9skMrn5Zt5EwiWpje7uiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d7ce05d9-df970d5a-e8ed-4613-82d5-6498fc1d2f3f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3b04634a07869e78611eeda4d4672a9c847b69ee666450979f26eb220f41974
Date: Thu, 7 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657183012
