Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2BB2F2B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 18:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654108920;
	h=To:Subject:From:Message-Id:Date;
	bh=oIRpsJ++2fGQsIKW43vFp7JmjMvPGtRuSwmdg1Wp3mE=;
	b=I396TWk7XjkAS4zGEWYDsm4fhpyO2tu12FL7VcdJY77f6lTWaNVb7czUl5Hlvi/N
	SLa80gB3B55/CXB4YLMEucEuEF1TILg9PFILMLqr5gB+wao+VHi7ivHroGfZegpXww/
	1YbKRuW/wg+W1ZPm7JE8+xDMaE2jtrYX7Oa0dlWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654108920;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oIRpsJ++2fGQsIKW43vFp7JmjMvPGtRuSwmdg1Wp3mE=;
	b=PcKdUoV+56GhyfEUsZmp/kLPKFf7d27LuggB55Uk3U+6RDWZk1vnhXoesMvWU7YZ
	ihIGl7JqrFDA9OmpJ04x57gKjUudee56WOijPvDuxPcayeih/Z1MrtrGcckDzsu20bI
	JoFK9eqDZB/7iuk6XQBDyT2sYf31l38JAA3IfiQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181209315cd-42b5392b-5316-4543-9808-bd5085a829e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5821e18b31ef3905042430240a861628928745ef53fd95508d5e01f745046e87
Date: Wed, 1 Jun 2022 18:42:00 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654108919
