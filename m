Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F5BA23A7
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644997284;
	h=To:Subject:From:Message-Id:Date;
	bh=95CDkIcZKdH0qZD51+dNzXNOLQOG8GBxIJsDpG3ZVtA=;
	b=BGc5WbCHO2u1wOFk/ABV14LjZnZ97wLp5ELcM8roBKfq51ko/RPITCeQDQ8VXDRs
	qR0yLHymKrNTNDLUMMEiaPXHA+DTGCFuYEkORZ6psVST8BK4KkaNQQ1HakPUJgeYI9k
	Pgt9rDeWqdyoGfsG756OBFvuk2iO1KIYDmsHYtNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644997284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=95CDkIcZKdH0qZD51+dNzXNOLQOG8GBxIJsDpG3ZVtA=;
	b=cmjGj3XNzPKERvi7GUwcnnWxUnFHrdIY9pKe0heue3yCxXihjz/+KGibFhbc0KS9
	Wz2tCKTByF0flOkk7FcJUtPJPrlDQdGZOJoAMnttNklTjBzvZiaAMM5zknd7YZ6W+3F
	N9zXg+4B9Y5b2R487xHEyR7nN9Yc4zAGL0o1O4Mo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f017a93ab-f0657093-3c59-4a01-b84d-025188424977-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2ff36c6cf3b4c568aa61ac1f2205d3739df62d5eb5abc6a642d1fb57cd86dfd
Date: Wed, 16 Feb 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644997284
