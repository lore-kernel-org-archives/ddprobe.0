Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FE51FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645786284;
	h=To:Subject:From:Message-Id:Date;
	bh=dXa5aXuYrAhNORK6zQNEzOLRj03vU6Z31fnTJhM2RTg=;
	b=Cm1O7DVYFdZOqkAUuiynCRj+KwGuOsWFnvtS+6Ruf3gOpQwLjpJ4B73r2eSZYEC1
	/CjMnTQGaSAVKtflRnov6Drxz+i3SzF0ywlgcronOheg3s/EBowxwJzZRKtmJygQsRj
	iAelw07GWqTgZuK3XoeODasJue8O5gHJWI9msoQs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645786284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dXa5aXuYrAhNORK6zQNEzOLRj03vU6Z31fnTJhM2RTg=;
	b=aNtNo+PRd4Uz6DjHpiN+yWKWeiX8HTaH7W3B/TQUFLno+hKdFoe6mFZovD2YF17U
	0wlPlSgvUf5MklpQrMOYYvd4PVIil1OgKoFGyuECGLEFLaceI8G00muDXpUuAgbkF+W
	RkJLoDIaXa7VwRvvGTwcOuWfwVVDIUMmSXiQtgxM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3081c2b1-efe4a4fe-52c4-492f-bf23-297771922c94-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bef5cae806d34d93fbb8e747178e68baaac3e06676b86b23854a6451a664388d
Date: Fri, 25 Feb 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645786284
