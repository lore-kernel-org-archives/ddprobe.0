Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008832F5C
	for <ddprobe@lists.linux.dev>; Wed, 13 Apr 2022 23:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649891278;
	h=To:Subject:From:Message-Id:Date;
	bh=4JQkhw3V8e2slNMwMQW9LL5wcCCjaa+iYqOyYzLgC5o=;
	b=KIwELMMwIKnwKt6db9c642MQdIawiZGYeZvFvri+bWjYG7XZHm4XlJx345DbxO7f
	a8fuPjvcxfYipHGBDz17IYCjQ78/GfxEZl2AJBiHg7YxsM1hNfFrQEv8W2+SXNnYf6X
	voK0rMx8xy9Qy0jMzp15UABDUj5iJkcDJpi7ttgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649891278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JQkhw3V8e2slNMwMQW9LL5wcCCjaa+iYqOyYzLgC5o=;
	b=V0R7ReXuJ+WAviTZtFj8tZ9wkVBEMv9FUbNSiXEcAIdZqwslmGI5wn/rVJXrFvAX
	+NmXJlAQeJz0/onkSlML8HQRWE2l88uQyJiwWFOmn21115qzmth4qW7LXIGGi4vARgL
	14rVpmSM8ByeylClL3/gyYNdTq0ThQyXBWqZnd9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180252efdee-762095f9-03dd-4131-9256-0a3ce47bf940-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea3f24cb9bdef445614f5ea777dbcba6e89b82e016125ccd4eddc1d0de2139b8
Date: Wed, 13 Apr 2022 23:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649891278
