Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CE867C
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 20:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646164884;
	h=To:Subject:From:Message-Id:Date;
	bh=hrfrX1It8sIFW2Lip7mrf7P1ONWp1j94t60kPvx5LXg=;
	b=jUCf9t5uQoqjNSBR4TYNGLortOyyAEJX4rRVzFDBBBTKL8HA0gZJ1/Bdgp89KvnN
	XwRA4l6HR+4CmSFZTtJiOCmYePK+yA0BFRjAU0StejgP8nzrPSStqtQvm7fDKiAs83A
	UXiU+eAQV4YswO9imObOXyMhIYLgbNPS4Ex/zsqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646164884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hrfrX1It8sIFW2Lip7mrf7P1ONWp1j94t60kPvx5LXg=;
	b=Ik6G5hsSp5uulp8M9ZIV0yQv29U+ryuFz0D2Gc8HnYjoOgY/fhqhi7XpmSl273pY
	1Fn9QBdQUs0129T2DaYwmyNFwLhxK0nNjWuwur/F+sRIPuIyqXXD9J/SR1auRDFAj+0
	sDmvhhGy2mjL0RF/j1WVYpb4ojzyQDDVFu498vos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4712bd20-a091479b-f827-43f0-83ee-182d302a9245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3954f75fe4457611e3ed58d20cd092b53324ad4c3e33a629921ff56c3cdb34f
Date: Tue, 1 Mar 2022 20:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646164884
