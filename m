Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F3473D77
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 23:50:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650844258;
	h=To:Subject:From:Message-Id:Date;
	bh=W6ka3Iy0LeJM5YE/fvU5c7nythaCfr0PsVwZCfY2pqM=;
	b=UBJzHLJqmwGq5xtLVh7fOD9jEKT3Csx5HTfjStczfyCWWvg00fZU0WIaCE5aYNHs
	uYD0iybFlD0lwjgsmXmSJPtYX8Tq9y3xG1x2U6AhjM8qeX2VzW4ZGH8AIBhx0yD44Q2
	bivbmAYJuxi8vhmofc2T6EbhRdy6FWJCccY82T+U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650844258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W6ka3Iy0LeJM5YE/fvU5c7nythaCfr0PsVwZCfY2pqM=;
	b=hqacJRGsS7z0fpeqDyYqO7A1UrlexyFeuN2rZmGjjucBAWCO8sskydHEateiFEPS
	393Bz8S8cuYQ0YbnZz37FDqmbygsEl7FgSoTMR7H4R/yLb+3o9K+zkWFptsFMiv2Yli
	fNKi4MF+kzTkjrPadkVucx4ElGtmrZ4yv/NdZfUw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805dfc4fe9-ad4a8419-8a10-4ce8-8b7a-4cf397072a23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53b2dc11754a4cada3b8bd8598ecaa26a77b59c218801234214386c62d3f4fac
Date: Sun, 24 Apr 2022 23:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650844258
