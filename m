Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CDB763D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659526252;
	h=To:Subject:From:Message-Id:Date;
	bh=2uioyo0lKfo1/y8mQJYRV8iat6G/NZsZfEU4o3D4qtc=;
	b=ZhIQJsJUtXuc28Q8tUVXYikQ9neioiZwYX4FtQSk5tuKfVHLGxNr7bwHzB2Yhr9r
	iJFp3MEnpL3yqIYm2OemYSuUcVsWhKdBywx+WjmZ2hdDW/yWvwKL8FTy3ysFudn2uPf
	jjO9IMQL2Tf6k+mxJDUpcshjl9Y8RiB+aqoEpuVo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659526252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2uioyo0lKfo1/y8mQJYRV8iat6G/NZsZfEU4o3D4qtc=;
	b=f1N973sVzOadlSjFtC+hR6YVLZAq/7ZaU8aYIGPWQgskce89vZ9uIifQHtoem6Ru
	emUkKYmInRQOdK0myd2kKKJtqj+Q7mKlAst6L7+cXpTsQKEGNrSvZaNc5Z1JtwDUOcR
	4KXe+OqHk+xDM1srzKJJ+ICsoag7NMujEckOP5IE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182637907e6-58ec8fb3-f311-4843-85ee-f59f58a59e02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3d223ac92956c3e68737606ca4dbbde4e558d534bce0048d0855a162cc835a8a
Date: Wed, 3 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659526252
