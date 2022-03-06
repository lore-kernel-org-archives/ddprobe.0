Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4C17C
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646552185;
	h=To:Subject:From:Message-Id:Date;
	bh=bc4+n6gGh3WJzxb0nWe3+4dRP37MycygwM6CpUuw1VA=;
	b=SZxqQJZrs2xhTTU0qC4JHh6BWsD1scoJBOwTYBj/Nxqil0Rwrs0xpFyfPxnQMrEe
	3jBabzN3ZLUgMJHQorpmDIs2DIT9UM9Sv7154I4dSQBq5HBPAkdZy9Iuklve3gY8rZk
	qOu8u7gegW00cUpQNVsnv81hB+RljUMJ5X1z7tNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646552185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bc4+n6gGh3WJzxb0nWe3+4dRP37MycygwM6CpUuw1VA=;
	b=KQdd5Fe0ApXUK33X/5LMzTfNNji71yZSLgzTu39tE+kq4dJRavNXR44SiVyv0TLw
	Q9daZSVhcx6kpFjdBkr9VWbfkV/63TzT34wQfF4StHdtkF9YW/XM7atHcI+ZneCZbom
	CMvecLNCREaU0XrH88Rbouy/kHmg2ijypHtByUS8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5e2877cf-1fb39d89-21bb-44a4-a3fb-059a49e5ca04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 739fa8b7cafc78a5b11dd629f2954f68d3e6263bf332a369da77d61789a63f8a
Date: Sun, 6 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646552184
