Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11CC2562
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 16:19:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654100340;
	h=To:Subject:From:Message-Id:Date;
	bh=40wkmXNh0TkLp3/MP2xudH9oC4cmZ5ijrGarQe8di/U=;
	b=L8lH16Kzvwhb21WJ1ijSuepsfI4rsnBhz7dcixXp6+ltYjNumtuJZV16iRmf3ZuC
	O/AHxcxxHzNNUA3s8NelJLHGDr6Rn3PV5HjwSK+IJdEML7CtzJwfl4CnE0CdWoPz0bc
	pdVVtns6+k0f5i2x4V3AvsbY+lJFCWUp6F8m39yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654100340;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=40wkmXNh0TkLp3/MP2xudH9oC4cmZ5ijrGarQe8di/U=;
	b=gd7up7t/EUIBpfkqZUaO4Si2YhpNwazBeXfbqYnq7llN539vYFeSCmKRcVkrcOMz
	PwkPQooiVsjbk1gIV/KsG8LlGzoEZ9K4d2AVvyKPNEgKb7QWO8gC2MTevIPt/Sy5E5i
	/iG3aC5TEkUlxGyvTdwE7/zzAxHJAMCFz1i3pu8E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018120102c69-3f28f5b6-6656-49c7-9932-c41abcccf0b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5b2468573cf2349173d4a7e8bb620f558062894ecebcdc4f93a45312fc65897
Date: Wed, 1 Jun 2022 16:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654100339
