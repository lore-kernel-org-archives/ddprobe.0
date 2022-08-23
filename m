Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE0797E0
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661214053;
	h=To:Subject:From:Message-Id:Date;
	bh=1iTwUG7WUbG1hGsZFMhbDQFhjImUkDX7LZ50FMbklYc=;
	b=jkKuqNIvnpu/GBaiXnalqncKBZgINfLc9KUYbQLyvf2KwwKuZvFAmsgdeIetqVGu
	mgecfIPaOsXZOdNbkJ/eUNgy4FYO0m2HmZhN2R3fHx7KhuQVM7qZEGCXXxUh3MCRzwa
	o83VHG+dvzXGz5Gg0eO9xvIZrbwk3o9p8SBV5mFg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661214053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1iTwUG7WUbG1hGsZFMhbDQFhjImUkDX7LZ50FMbklYc=;
	b=Nc6CNQxI9CkH9jbjq4iDkPtAL8RGivevDv1IiCWL1PAEH0YvhipCZRmqHnuOK7n5
	37gZqYZvFx9iDb0cTAqXvO75tUa+PU+y0eO+ngThZTbU6Afn0f5TWCrREUc5FA2TeKT
	0kvEe4NlKapY/2kTsTEgrgZbnZmXXjMzxGpyUS08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c812d0ed-620f76ff-1a9e-47d2-bf70-b2c5dfa1ed26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 723a3fdcd2405a18a2bb47d78629acea122f4c77333ca9cd3447fa7179ae649a
Date: Tue, 23 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661214052
