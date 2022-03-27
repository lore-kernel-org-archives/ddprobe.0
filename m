Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D72915A5
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 07:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648366258;
	h=To:Subject:From:Message-Id:Date;
	bh=sD4vmUtgR6eZyGakjd7x2/CiUgG8zmLwF5zo++SPLQo=;
	b=CS+0DAhOoIm3ZO+I4VqDAPG3wBmgqyjvd5T71OKreHNyG3CPSMciG+m8tx/5SHR5
	sF/p63/K3zaNy5iIUVz0qqS328tCwqBVU1wF3dlqwM0fcd5O27axuQewn1sJAgznZN/
	wG5zRk8j8DdnI6Hvuq/8CPBYlwf3K1zD/8Ef8MvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648366258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sD4vmUtgR6eZyGakjd7x2/CiUgG8zmLwF5zo++SPLQo=;
	b=QmgJMB5sEoHQKf+FmiX/QLL723zOfxaIuMqFjo3RKXj33cSYkoyIGeKzpwSW46wm
	6uw0nNJQwBXYxcJmPs1WUAw7jNkPN3CK/QMDi20mE/o4k+uY8t98K3YQXRnorZqQKDd
	nWslD4XYq3hwbum4HaGYojJZ5wz5FKPoD0UUpEHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fca49082f-ed4f7e54-37d9-4719-a818-7c137e124ef1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 705d76ff453ef604b86d9b1faa91754dbd5e34aec5b6f3921ddfe2f1f226da53
Date: Sun, 27 Mar 2022 07:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648366258
