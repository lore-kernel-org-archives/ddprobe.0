Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E913D7A
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 22:18:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653344279;
	h=To:Subject:From:Message-Id:Date;
	bh=emNFFMqElZi4xO8p0+50IFChm/VpBHD7oaMrlupklAk=;
	b=DqXVumDW4skOwzP/dekrU7TifYobOW8LyTlQnfTks6qWSeS61pC+/CIM+B3X0mG/
	7zAEffVANcn77DWm0HKYTBwmxIHlJrBzYAMGb6VmSRb7fX0kGf5WUg5WO4J7WuQa5ta
	Diumh5kkZ0Rv0bxxZ0q8LLp0hNLxwrFJbkTZiz6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653344279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=emNFFMqElZi4xO8p0+50IFChm/VpBHD7oaMrlupklAk=;
	b=eqaOxvQCfhzQdHYb/ukWDio4I0qay4RkswTy5bJQFDw/cKcJOLm5GHAK1MY2V+BZ
	6JPgieEe5xSIfmnYuzGv/LGbhKaK40bHDGXVGqqOPbTNrR910YE8YoVWO0FtVkgxVzd
	SLP26sZgDKxUfa/NQDOOKkpjaEMIVSek+iQV9Zac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f2ff9aff-6ba544df-1a7e-49f9-b6a7-74bc53b1a052-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9398a25bc22e64dbe9243513d50e766a33165451230d2fcf8edeb8767ae75ae
Date: Mon, 23 May 2022 22:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653344279
