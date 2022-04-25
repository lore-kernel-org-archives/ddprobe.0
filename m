Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18147C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 13:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650891778;
	h=To:Subject:From:Message-Id:Date;
	bh=uzZ2pjIBWA1ctSGlyICa7vkgMcvNvj/9TdD0F8kHY6Y=;
	b=c9lso7YQ9lHRsc4NlfkzTVWoUInsLd4su6bg8uryDmc8NPO+OAxzfzduVWSOZvvM
	tt0bRZom48zMVPgvDivkT8bt3pZPK5q68tzEUu6YnGPBMUPgNk6zQJwWxQGpt9BT/Y1
	PtXQJgjqVkut0VOmssBPolKXwE2JgFKlVOcJlqLE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650891778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uzZ2pjIBWA1ctSGlyICa7vkgMcvNvj/9TdD0F8kHY6Y=;
	b=UYLpywmAFL4Z0HnMCwammlEYpTREwPOVBNDgGGv6xxL1YRxY3HhT4VHDJwSq5Bvg
	FhfzX40qAwbdGZ9voTEKZ0nacy7eCC5puQqnLRFN2Z7FRPdEUNLs15bP6bBEsisYbmI
	VGxBbuTSjdQGg7I2uJ7AeazlbFdy0JwabYb9ZEB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018060d168cd-4b50ced6-4398-4f09-a37d-ab5da5fc8597-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2812ec0347abe16938ae7803129e51f665abe40786b4387df4808f1640057a20
Date: Mon, 25 Apr 2022 13:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650891778
