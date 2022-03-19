Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3BA7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647723085;
	h=To:Subject:From:Message-Id:Date;
	bh=NkO0cEekzySbUMKyqLvIA6E5NnE4JfW8ov10wLXY47E=;
	b=WrAaY2muzDWdI98xiJ+E/eb4bhaPIlhnLoxKF0ltRrmqS++hW7mLohTTE5eJfHJE
	WIqVWiM6RvorwX+ER1yDCFQ85jBOM7apIIwasH4E8cVd6D7yCINIeG9LVaIX5gp2WRY
	yt3WUbYf2zFh1CrmNQ/KHTo/mtyGibOqaZ3PO6Vw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647723085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NkO0cEekzySbUMKyqLvIA6E5NnE4JfW8ov10wLXY47E=;
	b=TWkaevizpf4MjCdHpLUW1Kw8Tn36vYgjcZ94b6Ca8nzvgrRRbEwz8n6V+tDmcNC/
	YWiMBoGO7yA4bMipqZwDKCqKnUqCAK5KqK+AyZSfU1uM48QidV9ycjuyPwFY7yeNwPN
	4N9vRL+mv/7rENBkQ0DlJwbHlEkVTak25SY13314=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3f2fbdd-f95bf481-1bc7-4fa0-b5d9-8176fab4af42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3b7d9782a78896ee3f817d8d39e06d463b6844ca293517aa74058d2ea58d3fc
Date: Sat, 19 Mar 2022 20:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647723084
