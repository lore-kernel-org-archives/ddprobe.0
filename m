Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E30938F5
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 18:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647456084;
	h=To:Subject:From:Message-Id:Date;
	bh=xbvI2yqHqMSE9R3iaZbY8bxXN5wX2y8Hvy1zoUezkLE=;
	b=l6Frx9l9VZF6ONE+pvz5at1YdYGV//wr3nsP1KYmcQhYh6D7b+KbNjOh4wdXPl7V
	3/nX1oGEka9B2QS8Vbu7Ut6TOw6QwOh8kTY0hYVhLNpeGvicVByk2NE1Q+gFGtZhFZQ
	KKlQVc4GnU22Tg1YRuIT7ChAg/Kw+pUDfK414HxM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647456084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xbvI2yqHqMSE9R3iaZbY8bxXN5wX2y8Hvy1zoUezkLE=;
	b=F0DctunEquh0nJmqRUfXf5kfeVYh+1j0kUyHtpA9O1LRzyuf7kxegKxI2fiYZUYx
	7MAXjP3eGGVa7iBoMwcOVStcdApnMOAXjDSAhwbwS/if893u5JWu95N2OxhsEUldOji
	/CFkqcpRjwTW5aQHaVJolGvjQVMVt5CYF3gx33NE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9408e332-7ae9ee47-aa1f-4396-9d97-3df976c0ac03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d71cf9e0595113c922ba1cd61f6a9d303633db2474ba540b49578150cd33cffa
Date: Wed, 16 Mar 2022 18:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647456084
