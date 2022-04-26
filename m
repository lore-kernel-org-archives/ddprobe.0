Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E23447B
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 16:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650991138;
	h=To:Subject:From:Message-Id:Date;
	bh=ZgEghkXyBqtXQht/CB4kov1VWIx8sKJq0xKG0kDB0JQ=;
	b=k13R29Jx5iLuxih/Hq2LOxMCBGoIGfXLc/dy98UrQJWiBCUjk3hup1F4VgbhDwX+
	iX+HaGVrdjvnxcDBpsWSmMdkR3i+V5Q4K+QhKhWW4nhlg3pFnGbVNVhhQ4tW3ISbySW
	wiK1CMeEwAkqkWyuBvLBXHTFvSPpAMspuXdXrDdM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650991138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZgEghkXyBqtXQht/CB4kov1VWIx8sKJq0xKG0kDB0JQ=;
	b=CtnDuzhuoVgKXfWdtZksmKK5V/uyhae/5NTmZg537340mdiiTJugLnPQPp7jBmyz
	VoxBmHTuni7oDO/co120WDjA5kf7Ix0ysdVekoLwM+kyieYIhN8tpEYJykrza1CUFoD
	K0KbX6ZiF44jmwhrjn0WNoZQnkHiPk48/9tyaLYg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018066bd85d0-763e8a48-9b8b-455d-8316-7662f33153d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53300c3fb5e88a2e3836af60697765b2715de27e89f7dc2e6514fa06fb68cc5c
Date: Tue, 26 Apr 2022 16:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650991138
