Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90E882F33
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 19:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657652812;
	h=To:Subject:From:Message-Id:Date;
	bh=bktN8QhjYkPM9uOtII7vYvXLYY11Ib/NIwVBYIP/YcI=;
	b=HRsIQtw+g7OU7l7Ziyr6ZN7UwMVrhOd25s60q3tol07WftbVMdv1PJMH7ze2PjuU
	9YfkYNUYpCPYeIZ1No1uJsUvmuLEq3zhlUFJzuhoS96Y6XFmbZxDTQvTt1YlWkm/GFZ
	J11BXfrlnqUgdOt9f0m7zS7GcKzxWxuPrdnaNf20=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657652812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bktN8QhjYkPM9uOtII7vYvXLYY11Ib/NIwVBYIP/YcI=;
	b=E93wr+DCNfXWZlNoiAPDjYwutCgJCJBFYQ7t4FaqFAFJeyEarEK9movKHqABMz3G
	+ukY13P7ccA2WRVKDdrOO72NXtV9GeBLrNWKaxCGXgdsbuVxTZxsecD5lwvOCblS4hH
	TEYXrAew8RB/S9983v1N7Q6b8NYeCX6ew4o0WTFY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f3ce9a79-e28013e4-a035-4260-a211-09345c74b3be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d6bcdd3288878a70b644cb7cf290e84f4cf2457b6d7597334069cc3886f5c2
Date: Tue, 12 Jul 2022 19:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657652812
