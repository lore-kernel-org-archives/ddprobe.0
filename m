Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D133364
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645507284;
	h=To:Subject:From:Message-Id:Date;
	bh=35ERxIGjDJ5raMmYXM52CmaJc/xcHuLdTp4E5Z5IkJg=;
	b=OVJLlWi7FGOb5pRZpdwQlvvNVB78I6YrAI785Uv1qZWRg2tG82AjP8YoFox4Twrt
	YXgf13PIPsVSjDF/RsqF6KIB7r58GfY3wSH9t/oB9BQ++wo4b6PR+031W4Dg89lVJxj
	447sV8OCpXpZ3UKG7lbPvULaNyoejIKQOd3UtgT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645507284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=35ERxIGjDJ5raMmYXM52CmaJc/xcHuLdTp4E5Z5IkJg=;
	b=JCeuWJ+o8V8IgxJVlBbpg6I0Zz334ka5gU4O1Sa6tGbX8lvkAguu+Z0yvbD04mWp
	U7oV7r+erlsRKoUE2ZtF9fgkDre0TaGJJTN7Y37053beF5mM29xGzV5s77/pxl7pnID
	EsUSvuf8EO/S4tttkpXa4QASpaqZmElAzWnRbFQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fe08f1f-e7558c83-9fa3-41d3-8839-7d9ea326315d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 130d9fa23d8dd968aa9d247a034e09e7be3ffb1921627ca7b050ee63d54b14db
Date: Tue, 22 Feb 2022 05:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645507284
