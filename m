Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A8EA31
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 18:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649527258;
	h=To:Subject:From:Message-Id:Date;
	bh=NiiTBItVYbhkz73bKBelMHjrO8yB/EbZA6vKHoFdWyw=;
	b=Xf8FYkQz/BC1so92wo4CuYCkeASZ96B0u86v34WHe8YMIplbwK56l91eFkvH2+uE
	kQqPN4uywSqcwQm4YeqWTM9ev7FeOlQ5x9vjFSu8nmUnS0kKCKb01dvXa/5UwzB14D8
	l8ml3ijTu0Q9VVZfCdhR9q+zCugo3buB3PkP6330=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649527258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NiiTBItVYbhkz73bKBelMHjrO8yB/EbZA6vKHoFdWyw=;
	b=L/oqGDMGuYCHSYKH+YjCD5IJ3bVOrZd5Mx2wmfbKIV2JrNXfFH95HG8llivqIa/y
	st6O5wpEPvxzjKgfSVsZ4GYmdvQM3UnJ7bU1mKpOzdbSsI4wmIwOQDfF8LA7EE9s09e
	uFkjgbGcJdr05P0JT9lmrJrHCD0gDMWA5TormSZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800f7c7c74-9b6fce6e-6f4f-4abc-afad-f3db84cc030c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6c3e87549ff38c92d86e1f552d5ae755fa4beb37b9b8b005f88eb7d72b8017e
Date: Sat, 9 Apr 2022 18:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649527258
