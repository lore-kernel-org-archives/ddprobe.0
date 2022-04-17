Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0372B2567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 17:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650215218;
	h=To:Subject:From:Message-Id:Date;
	bh=ngcUye3/DNIYYLxPZsKdhEqOWAWrkiQ7Jnjqu/FkJCQ=;
	b=fCxbJhlvlJ7J2hEKLyX7j3T4q4z8k6T44w0MZwesCEhThgKLBrrZUurTY5SZNUnr
	qPZ6LCPNN0jQnUO0eHgwfW184AWx66uSoMYymKN8VxIK6XwFCyoftgI4JeFlF3ZcPaI
	6kFUVZOqpcr0MylNfn5pWSelDY7niBCBAxAwU3lM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650215218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ngcUye3/DNIYYLxPZsKdhEqOWAWrkiQ7Jnjqu/FkJCQ=;
	b=RnGeBttk+wHQVGfq0byHR+wk4ai6gI9211kZGz9LHkzQ/ZmUZEfZ20+ymGWVghU9
	QWA22obzOAROM9k2TQm9h4e+J93ViqAO2BqOWXnrw8VO0+scmq8dT0XsTO/1VCuOEHj
	9IesD4851d/yf/mFXt4o74fKHWGMLUfhTxOZ+1/w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180387dec52-ee5832a3-1ad4-4bed-942c-916a96f4fab9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c2d3dced80a834b25b02c5049425c5cd71ca2644c0b123442a80b51029dcc6e9
Date: Sun, 17 Apr 2022 17:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650215218
