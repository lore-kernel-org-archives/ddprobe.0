Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 569741FD8
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646575884;
	h=To:Subject:From:Message-Id:Date;
	bh=lmHUpKbTg7CEbFZw6cRtEd+B82IHbGByTHgAmamLIh8=;
	b=l3FBVLopC/O4uNmB7aKFJqBZNqOeAmdFN96JQaTYRtemMju0QszIcBdZYi0MZccT
	qk+ixoBjNgFaR5SutNkhy2nQ/eOvlvvga0gekY8OTN0SXViJoOsfcoDOMEuz3K2r2gS
	QPvse4RktcX1bSte/fSVM8kD7/8IPXknKCaNloME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646575884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lmHUpKbTg7CEbFZw6cRtEd+B82IHbGByTHgAmamLIh8=;
	b=hYGwFjslBQE0UoG1ja1cFtYepTh7rUHjZaCYomxaNSfWzidkZjOCecYv3UIHNIsR
	EnXP318QQQL6LZPWSb4Rqmy0ZGwXXX6yAyOBYK3LrhWSdlhV6ggChNyQ5GPh7s8+VbS
	T3CsSOM6WYi0Y3hOJtUrz8T1SC7xFmKTVW+BxlRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5f9219d0-9e36ab63-cf2e-43bf-91cd-2d3c0366f40d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fb13a6f02ba86002252fbf5c08f626fe5dee020b3785272581aecca9969d4100
Date: Sun, 6 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646575884
