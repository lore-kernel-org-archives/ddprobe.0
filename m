Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCE51373
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645735584;
	h=To:Subject:From:Message-Id:Date;
	bh=XDFgeiKpMUM9MH4Mye5n9VUlrfh8YOyscm9Xd1YepxI=;
	b=bb3OlcHE8dQn+VMs0wHcyYtO8QQyMGSZ6oLdJ2utG6yElKMXPepITPDV7tU3qwMA
	60V3U81IbOpNxa7YnOOX2mYltrDAl8IRtRcanKI5BdnEgQM8mlPOqbsRwLYZ3GJppjG
	VDfWR+/AEeIkBhG5J6c5O5Wul0FiQAU4wHFH7ZDc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645735584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XDFgeiKpMUM9MH4Mye5n9VUlrfh8YOyscm9Xd1YepxI=;
	b=OkghscYlZBly4Q9bq2o24QPjZX7EIOOsvKUtKBQVLraT41CFJTfPqgVfD+TDGI3o
	oJEuje/4WXG+wPz4/jGevddv560kxgGxB3WTVl2+wiuRM+ggQOCH8OdX698BBmENRYO
	L38ugWadlh/LHU4LG3HHakZBG3RsjxKcUcRITMpM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d7c23f9-203b76d1-37b3-4a37-b00a-638de5ddc89a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5b57624af40258ad942cd31520877c9786bbfab26e0ba2b2f0ecc5eb7e650ec
Date: Thu, 24 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645735584
