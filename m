Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AA7E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 08:06:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647072385;
	h=To:Subject:From:Message-Id:Date;
	bh=SQ2JUjd0kB7jApcWs27EIuy++1XNKKe2SUpxJsTBhr8=;
	b=RD9BjR9HaE5G94FW6rpL5MlfIv3Ja1juPFR+qBQjxzz4jInHdfBXJdJbqHvOXucy
	AVrkqEEoJu1V6MNo4hbsxXe6KKpR3u1x0miJy3avFh9OAvhixyQS351oSe1K+KnP115
	USYE4ACakyof8KwG+McIKgVAJdH6Qcjn6gFHHbY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647072385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQ2JUjd0kB7jApcWs27EIuy++1XNKKe2SUpxJsTBhr8=;
	b=kN1i9r5CbL5swr99pVphbrChmLoAg9nCQyAaHVpX3Q6Nex2YxxBlnuADZK8jSmLP
	aJfH2VFX/OZUrkNrwZzRW0v8GIQQdhWmJwf3KNuFK/xkZlbTE0+YR6R61bgGlQqIT2s
	BJP/L42IAxQXEkd7ryK+JQ4T5QGCcXr30jb5gaNg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7d2a1707-77cfa739-4038-4d4b-97b3-1b991b6cfdad-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4930422539f21d924d6a60f6ed60dcc4740542c391905c40866fa57023b238e7
Date: Sat, 12 Mar 2022 08:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647072384
