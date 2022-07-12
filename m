Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D9D4414
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657640212;
	h=To:Subject:From:Message-Id:Date;
	bh=AdKGxlfloAww9g1osS6u5XHGqFCg52PRO+Lx+4t5A4A=;
	b=MPCI+g8VnaT9bNgXOGdLzedCi9IR40kwOxhXfL8zXW2Zo1pmcguTI32gLN7Hb5zw
	I+LiXX7roLC9yE3oRtEO2mo0JYyKodcSibapXgx4JsWUXtmKRrG6XwAM8eJFAXX9aZR
	WJQ6W3WnhbVWAKLYhsjp5I+MRV6plfUaTnPmhu5w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657640212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AdKGxlfloAww9g1osS6u5XHGqFCg52PRO+Lx+4t5A4A=;
	b=YD8ETJyK5b7+foj33wGHSbzDUqCF21TD0rdtYVRH9g8V9DUN/ci+3+hIsawFZHsi
	IaQCbwh1//+nRAadXFOgTC58mUyoUpdQS8BtWkuX4CueXFtC9J0qZp9GBJ2xpkbMg75
	/PqUIXr9HiqXjv9R+qIy9TuFFJipgKj5KEbUoHL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f30e57b1-87a0614f-c305-4e63-bfbe-e3855ea2b3da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aab421fef4f3e581d0160e84105c19f5a279e9f0e41c2560b13aa360ee63b741
Date: Tue, 12 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657640212
