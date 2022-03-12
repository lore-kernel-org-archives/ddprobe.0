Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AA27A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647054685;
	h=To:Subject:From:Message-Id:Date;
	bh=DO5xND19hrKMQgsuObWFwZdyDwIcfi2BHDTinJdR8p0=;
	b=cdA0vNS5JtWBh2W7I3+u1V9GNZ1+V+x4dZioNPVY3CFojXoZMp2ayYK0/UOa3tF8
	5woJV81QXNnrzco0BfgwcPvZ2saHvdU1F/Vp91l8seecqqlGCBI5xaZ2uvDQG55tRew
	69xVCDZV7kEbANh3350bDkZvUcbaWHmX5z4Y7CGY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647054685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DO5xND19hrKMQgsuObWFwZdyDwIcfi2BHDTinJdR8p0=;
	b=kUX9jfQq9X4T7wTZuAdQ2rrO5MUFatKZIDiD/VhPhofFHC9ZcQbpSCKUBYHkSArz
	j1lQVyA0QfBf9gzCzbaoDHVPyDxfI/NhwIUe+WtFetlasmocvholSj5wj37ME+YUnTf
	kUP9bp/r1xstpvwVUtZCfQdLiN99Zd9c6DkOlNDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c1c0265-c2d52cb6-956c-419a-94ae-5eda5b6b1348-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71daa0c893039641038ba1aab03d4c39a9358bb9677ee817e908ad440b9de609
Date: Sat, 12 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647054684
