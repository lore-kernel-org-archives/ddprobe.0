Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051CD62A
	for <ddprobe@lists.linux.dev>; Fri,  6 May 2022 02:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651802578;
	h=To:Subject:From:Message-Id:Date;
	bh=uJweuSpARcyYTpV1wWssUPbwkq01hIcl4B7s2qpZPtc=;
	b=f8R2QjdA8WNqK+OA97Qcdwr4q6Is4E6LUfqBjZEE1idrcdr0tnumgPx6qDLfRJXe
	CwXpkCUNB2rYYsSjXJd7pyIZfzij13qkTbOeA+UdPCUa5P0K6K/q18R0bn8NkfXTnYp
	zJJFl1RVPPmpBX9unPgqzFFut5KAO5TrDKR6Xol4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651802578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uJweuSpARcyYTpV1wWssUPbwkq01hIcl4B7s2qpZPtc=;
	b=KLRgieKD91mC62pSGtyc7sez2UEevH5qEiip2Y5q5XuyBvKyskpUwff7IXluYKMc
	yabbXbmA02VUjHYBpO9Z+AGMFROlRfPpMyKFz7ckdRnXRK8YS9fHlyAlVeZC7LZzWVY
	Rc5e5Bk/XkjKmB5aqlF7IQrD6tzUG9PQ59k/ekeo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180971b1d6a-2d2aaad1-4ceb-4ad4-ae53-60f6cd501197-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47f08cb112d1c2219feb0297e52c69292fff55c9d5248dd783356c678ce852eb
Date: Fri, 6 May 2022 02:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651802578
