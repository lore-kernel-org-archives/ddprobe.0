Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F70D2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645822284;
	h=To:Subject:From:Message-Id:Date;
	bh=rbeMQQsrP+BspGFiYsz2EqD0fMyZzi5bFMzwMwWZj/k=;
	b=WuuuugstO1oydg4EBEurobofjuK9hpN/XoC/ZCs0FODSAWPokNZWbn7oi1jPy86E
	IsxzTxdvTth7yuVnkGlyGRvPbySijwreYuJhHEbjXceay4+aqG0DnrNEQgSAEezs0fE
	ekMHWuamdq7LA9DxxnPdASVpmvdOorZXt+cYeeoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645822284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbeMQQsrP+BspGFiYsz2EqD0fMyZzi5bFMzwMwWZj/k=;
	b=IQk/+hXE8ppkpV2WZ6MHHzxdQVkPY9J5wKMJ/e68Re2my/Ykc5VosjIONiXsg/EA
	YIGASqmBvmr/b2KZ8rtLq5hgfzLfhyjDfp4bxIFOW08s5IYQTUDys+i8V9WXn7Fle4h
	JfmusUgDVFjUGq3OFwEu0ZceCquBFOfUhyaK4iEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32a713c6-303ec46e-0c24-4a14-8dd5-91813d570f22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c98abbd13b7a88c0adc3e868556fd583963e940d28e4d29153d8e5b6ff2194
Date: Fri, 25 Feb 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645822284
