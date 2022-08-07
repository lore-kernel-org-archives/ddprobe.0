Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E5433F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659900652;
	h=To:Subject:From:Message-Id:Date;
	bh=BQmvxUG6ofEald3Bbg5p+S8Xwh4UG2jE6jVnmh6DbcM=;
	b=h3U/h1X1vRgtKbymImM+bR3MJg+lpnWN2CLcMPVKjrOjwEE91wEEnrvq2yrsquwx
	T6dJSQzg/2bKUb0IkodTRZc8Kc9eZOInqYrDTrqg973V+LMJWw+mwqrIfuZcOUawsn2
	GZ+bSwIRA3xmSpn2cXTvMB+Y2/JzsGwHwoGcTaLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659900652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BQmvxUG6ofEald3Bbg5p+S8Xwh4UG2jE6jVnmh6DbcM=;
	b=TveHManJchMxahWYUc0cAA5CL7+53RX7y6gF0QlZ+AZcWMAABLnQgLxbC6eKWpyf
	Deigbc4JusE0yqJ9oVXVNZsP2FIgqvh1skDVeklei08ZdCtp9ktyjAL60ECCw2ZQCdn
	Vtp8OvF83ph6W7ZPH8x8Kc9Ebpn+x9UMad9w/G10=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279c9ec54-525e1db4-d512-4a35-bfac-6610ca4b4640-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1daa08216ebea8346a68ce5e8d661ac1b5c3d93d169ed3b3618dd2b8c748d373
Date: Sun, 7 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659900652
