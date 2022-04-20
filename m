Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F9010ED
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650428878;
	h=To:Subject:From:Message-Id:Date;
	bh=MlKtELPgWUWWnf6AyHRxuY8KMXLuiFhJKvaMkLXWuxc=;
	b=hWTtlDxXbaGUj4g/CvnuVui0kL6+Clqh4T0eB6F8tLVcjxXAK2Xuwo2eu84qQywi
	R8bb9hXxMAFX/XsQM+kb8z2GHuuKJ2af+UAgvIXse29ihtATOAyPDrLFnbd49zbHa5P
	uQAe0foTRkE8NpmlJyY1ZuO9lkODBKbKx7BlG3eU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650428878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MlKtELPgWUWWnf6AyHRxuY8KMXLuiFhJKvaMkLXWuxc=;
	b=NGRr0PLxJB8sl5w+aW5oDk++6vLT6xDRXu8FAXljeGe7r1+amUOUFH/EhJvf8aGv
	tPkP1vhYSFuPnBTeZE0Ybt5qeYXJfFzh5b5Fq2OyPCpp5OAySq75ZjojptpROUGzAF4
	o5FG4BALKdgOmhn724EfL8NZO3srZ4xbAxTvxVIY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180453a1df7-b1a3837b-a99d-4f03-8f6e-92ee398c0195-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77943c605ec4dc68f16147a64b1f929a88d27420fec6d978f684c3743c5e1455
Date: Wed, 20 Apr 2022 04:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650428878
