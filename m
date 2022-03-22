Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A24937A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647912384;
	h=To:Subject:From:Message-Id:Date;
	bh=C0cMHrefIczJM3ZauJHsNubenobiRyL/tQcAjYY3R3E=;
	b=TNf+GSih7wmbYz3eKn65FYodzO7PrzAd5hvaAPj0uNlRBYKB6ZYiLq95piUIaiRI
	fTt7TPlHHYnhWE5tFoXn30OmZr8jeyxeYMXQHYonnEixYBHZFELuU8SG6wnJV6hFtV1
	vJ9TDJKwG5idjVzWd7plVKuIrUqa/tMQJh8PMRc8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647912384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C0cMHrefIczJM3ZauJHsNubenobiRyL/tQcAjYY3R3E=;
	b=a93rhgpFUtVSOMxn4ISrnDAV5w3vILW5HJC7kyRgsUUGlSsK6OAk4RXg+bSDOqqD
	y+3FfBqXP6o4IZBqwkaHzrcLxcog/AHfOx3ATB5cVtR2ACMn/s5IgN9EDY1Rki342NO
	6ZuKb6O89s5PsTyOmJ+yLg2u/XckgI98P5rE9rjk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf3b78fa-3a45ab77-b186-4c41-b421-1f413b37d7e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78c6936c1d8be67e14c78d673ec084936fef67580b929623a11a25d0a4c46d8e
Date: Tue, 22 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647912384
