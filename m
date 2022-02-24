Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 635167B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645665685;
	h=To:Subject:From:Message-Id:Date;
	bh=SQnVKBXyLGR+1ZsUBdS6Hy1vmtZBQq89ZyT0ZmjlqBQ=;
	b=iJ1dFSsuSssCGOw+xerMF5cuzZFyGqfq6TLeNM0Mh5yRuNKukNqwUtmIIVcBCene
	0wPifF4hx4KBzjRKyVlsn8OhNSymZ6yFOrDxFWIJpA9aHBzf1o4rp66DyjYFmFfqCby
	1Dip3b3Oo58K/eodwawThlWRKyhu4uRZ0w5fKhB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645665685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SQnVKBXyLGR+1ZsUBdS6Hy1vmtZBQq89ZyT0ZmjlqBQ=;
	b=cZ4J/AnTm+A3ntF9CL+/UwAGo8EbAbKqhzGt42YRPffSIqKEBRXxuqsYz1kfDtqp
	zEomFRA97CzhooetAwkN8vV8xg/6PN1+6sHMDgeLxzl4B2ca6JA4A+nYA+kcnnoiRwd
	Ae+vU8pyRO0q5+4hHq3GscXVnk3gXk/VL9LU4rF0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29518d78-a19e7462-26b3-4a50-95f6-6820ee4dfb82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c7ea315897749bfcad3f6dbfb8aafe082633425a10fa3cb27842a56246f658f
Date: Thu, 24 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645665684
