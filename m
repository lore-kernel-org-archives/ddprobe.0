Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E1F7A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 14:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657378612;
	h=To:Subject:From:Message-Id:Date;
	bh=+/9+VTEabPvyIWDxMZVpBFEmOxYfrx8NFH2m3Ubn+p8=;
	b=Jh5miaGE7uP8h8+ac4QhB82iHX9zY6kIzHxGnsJJt5Ef8IZpINQO5XGvWVn0a4km
	Ei4GvZ3lEqavzFNR63prM8C84mRg4ydwTN5UeQeItLTKWIYLhkVEu0LKXFwG2Qqt/5k
	4/4+iR67W4lcsDEUGg3Yi382dRpIGqtttLTAvgJQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657378612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+/9+VTEabPvyIWDxMZVpBFEmOxYfrx8NFH2m3Ubn+p8=;
	b=drqlrMRE+gt9/tGsPkLDjyCq2kA+1tyG45Xbvrx92KDmx4qHKd5nsBV4kl3EPguQ
	WnqWA2cCHFus9d4/Yxvc71onlmyB6GKAwt2GclyjOFenk4AizN4yGV4HpFGiekHPaJu
	56pGYOTkiO7GRq6Gwrv5pItJe/U979FJ0RY+5R0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e376a446-57550283-2c90-426a-b9b1-4bfd19b7b4b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8df9a03621bbaf4eb7df6bccd22d58c776fe9a3c5856c8edc9f289b2377eefec
Date: Sat, 9 Jul 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657378612
