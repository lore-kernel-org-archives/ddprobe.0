Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3579B7C
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657137412;
	h=To:Subject:From:Message-Id:Date;
	bh=9GK1Kd/QIrKE9XFX94/G0VwhmNwnwRb17qlfc6O7mWM=;
	b=g3xAwwWBAYMtqfI6XO2WX/DAg+BHZvQ7xZyTayGGbaLfW7o1xYFFdJsN3B5myKP9
	FBfUVHy3hZ2Xkr6EQZHYEJZGntuiWQXDhr5zKHUg5+p6SYs3ejdKE4KJqoEHS3rH2q0
	rDbWIUVnEsLz8IvBAIaa+RfaMxzTjqzl9YeOmWn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657137412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9GK1Kd/QIrKE9XFX94/G0VwhmNwnwRb17qlfc6O7mWM=;
	b=LhkPiIKPWYau+A1SFSORv5QNvy1OOgZc7db/ilrLHtpQbKhdWfiE/cqlRlHrFL2a
	BTTndK7iHV4oVdl7g+iS1hRMStixxRiM8vWEsks2fP+Fv/l+EIamEy0BLsnsheAQWls
	XTbH3q2+02mDwW+dAHY9rOrcuhgqWQYHLv6q7UYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d51638da-ddfb7b50-2633-4ddd-a9c5-88d98777f638-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1100c86b9e8d0cf47f794130539c70c1ac628d294da7f84555ee0d613dce37bf
Date: Wed, 6 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657137412
