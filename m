Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4B6D7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659492053;
	h=To:Subject:From:Message-Id:Date;
	bh=CQiCdJoeNT2AtoaB6SLShnJq28iy16Gcs5E0j2H/HQg=;
	b=a8ZyHMW0qtQN8yFlDAqmMH8+AlMU5B5BXooZ/MNKkZXB50ljxaA+PMmWyHrWGI7Y
	IFqcJEiO9VSTYLgw98xXeggnWwRJXG1vg0djTTfh5b+ca7nth0rD1zcqS95qax77feF
	ZjmlFwZBARo2TIGY04sGB5+GvjZXuLz+OICpZEnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659492053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CQiCdJoeNT2AtoaB6SLShnJq28iy16Gcs5E0j2H/HQg=;
	b=gUXr2n/ekQOGFxouZ7C+aNJzoJqk/cjqVHQLCl71Yik/ADEqY3wRogeJo4Htw4le
	kCY9OPL5zIeE744RScrKBpf2XgSCA44gRp0mPB2DtwWhyOdXip3qtKh87neaW8sKwQF
	tYpG628tMABePA/i/6wTBFpT2ELb4K/U2OtJyjrE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182616f2e3d-f563d09d-0492-402c-af86-213c82903a84-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93e67da3a953859aea3ed4882baedef781a2433b5a38495512bede0d41f99bf3
Date: Wed, 3 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659492052
