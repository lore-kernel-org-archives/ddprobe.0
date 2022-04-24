Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4627417D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 05:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650776698;
	h=To:Subject:From:Message-Id:Date;
	bh=WGJ4slcu/Znddc8D7t1Pjp7KErRlTnEfBjtq/J9gn8g=;
	b=WAC774DSVNiLlesquNOxYe5Mqa2l9SPQQE8+wwAMqf6lltNThFBJZf2ylQ2FOjrW
	hvg16xteZD9WwuaYkX2S+yRazWd0v8A3VAr8FYxFdAxFS9A7/X4JHsYW/ETJfHLgIRC
	4bbW7qo2ghmjbHnjPnTTXII7lG7zkZGnzxHPcGcg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650776698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WGJ4slcu/Znddc8D7t1Pjp7KErRlTnEfBjtq/J9gn8g=;
	b=lBzS7RoaVIe0WDMpzARsOfuDITYtcIjghryWuGMH7HHdVjkUtgJ32UITgX7rNpWY
	UNvgedC0DBIUc4ldUbre3SxRe3KGZyxG54xUv2gEghfbYaASPnY0MTNlED0p9agk2FF
	A/oFubM7BVdznHPIrfGKoZMvA1xYqRzf7C2HgRLw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059f56dd0-ea42ad4d-4ae8-4c74-967c-348cef4ff2e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d97c4f0a72788dc04825220685644f1392881edcc864a37c0a80b033c5db69ee
Date: Sun, 24 Apr 2022 05:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650776698
