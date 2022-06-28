Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F73B3209
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 12:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656421012;
	h=To:Subject:From:Message-Id:Date;
	bh=wvzz8/QMR/gOso+0OkdUW9SrOJTY5mBUzk2IKREroSc=;
	b=g/GIwvNa2N3UVIM4bnX/f4hzhGBdvIwe6KzJf2qsdUixb4yC3T9u4ehvjBsZRa5S
	pCxXh5eKWGY6//5XWRz0JNj66kw+uGFNGvQ8ZVApzHaoR0ssmkwf6dxS4iC9gQZE0NP
	tZNdZh3QB3yjkXVOcGbV0C9yAMaqf9jClFN2BDpo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656421012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wvzz8/QMR/gOso+0OkdUW9SrOJTY5mBUzk2IKREroSc=;
	b=B6baCH+OT2uxfMUsrtHFjUgSzgZd2rrjHaJiKEhUlhVK04WXSSfBkbK/C4UW1pVv
	vPI4PaLzJvJJWGde9NPlRDEWqZ0C9CZYSv11hYp6DZrfgmwOwbp1MQ3JH+5CC7tJH0O
	USVP6UyswZbqIU5JJcFODQ6tQekRKi7PrqAh0oxU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa62d336-86859926-053f-4ec2-9c13-d4203906ee7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b55ba29f032c78f74bb98ea519355049b9e89629823a10609d8dbd96ef669bb
Date: Tue, 28 Jun 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656421012
