Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98058429E
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646350584;
	h=To:Subject:From:Message-Id:Date;
	bh=vLWdAEXYVTW0XU9ccfXAHy30Z7Qult9bQetj8tVKG6g=;
	b=hlhBLMf5nku+1KMZ9A3eluvr2ltMuRau1nc5/M9fwdaRt77nK+UJkhzBbBVcoNyS
	sJvYzdI4lvv4dpuJfpohPRMsOYmvQGEbFp9EYNi5kSjl2lxCM4G57arKB/GNWLM3oiQ
	o4OTv4H54VZ9xu/8vRsfRthKSzWzzma/eXK5C3R8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646350584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vLWdAEXYVTW0XU9ccfXAHy30Z7Qult9bQetj8tVKG6g=;
	b=ZmLvifOhwf2KOT8WMznjHDLPO9act63Eu1MOx1sNZBDJ4T9/SvTuFQelHnsXUd4h
	4Fp+qxJCFPKXUY+G2+AIv9G6g6JYkXPF4FSKZjAv+YXjtbLtiw8D7J7nwRI/5rZxXjv
	YUng1SE7gTWrQNMdbu4P+VfFAFsfzye+uIUtTUNU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f52244bbb-08e0a17a-3ee4-4419-b9fc-87b0b5bf0a62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef880aba5dc0dc13fe4e65862d1ef74db692b0f24b59519644022b40d93450c
Date: Thu, 3 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646350584
