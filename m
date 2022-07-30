Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B8623A4
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659161452;
	h=To:Subject:From:Message-Id:Date;
	bh=4hERDGNtn2wY8mwkHcjK8O9woxFo91O4DBm/1Zo0+LI=;
	b=aCZnL6PkjgNx5rb1M714ijlOZnrpEuycQ6jyYUYw15haBJ/ZLbZYKcDN4opKpDft
	V86APT+vn4keqYCAXC7f4WljoojS35Ge/YdDv8MeUBw0e0puhzMyLrlnWf5cQkJO1h8
	SyoH5kROHx/E5RU+JOLizQyC1qLRQ7+0Ryn6Tl+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659161452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4hERDGNtn2wY8mwkHcjK8O9woxFo91O4DBm/1Zo0+LI=;
	b=iLqBA5eWbRhbsZiES3AiIDZ5TP3hKcQLKHnD89FIbh80dsMMS5ufityPVIMCmQBd
	QnXqQ9CivpGAAEwIDLdjyKSZdW4UODXTRBYKvfIa2sowlE5lSBGMVz/dGso5p7UNkk+
	queZTp90nlSmb+g3KnKsiA4PW+9nuJdD7ACqczYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824dbaa060-46cfd82d-ed42-42c4-a34f-57556adeb8e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8563e03c4f5fe0e93ff14646eb30487dc49154c79fef93ef46ec1a9fc03d322b
Date: Sat, 30 Jul 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659161452
