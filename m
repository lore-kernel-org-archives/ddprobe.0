Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBEAA52
	for <ddprobe@lists.linux.dev>; Sat,  7 May 2022 06:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651904218;
	h=To:Subject:From:Message-Id:Date;
	bh=PZnc0Fv91BvE7A8LAsb/KNDqE64UWQfMrUBpz30ZL2Q=;
	b=EDuBq+BTJTCOjLdabAyqgypEEc5PDbTbtSKMiinRCZLvsUmQMXjkaBkKkLrNmbHY
	hjdA21AT/Nw8xzzKyHI3R0kGYtCOfkGc4mKmotOdYxRvN/JxVXg5au+cC6QbGiPpGnk
	MCKdnz4LqO0bF6RLICvVMlogXIjoHzG+DFzr+km0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651904218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PZnc0Fv91BvE7A8LAsb/KNDqE64UWQfMrUBpz30ZL2Q=;
	b=f+nAouWBTMsprgEtESwhZ6wnG7K0oVllqwZB9P5GLAvIkZhjxUgByqk9MrfzOlYU
	94O25fpdChJKXUW1mNXF9Ix1+nhNT0DAs6mU3CeK5oXbkVql21tE0I/cdLvbvSJPiwj
	tz17G3CeHvpMVkaGs1QkojbpsAsF/Prezdt2fXyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101809d2a04c1-e7ec0b73-1bb4-48f1-ad35-9141f699c347-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4da69a801c5fd6bbe11d75fb2f4ee8730aa4f18537a7fb0e8067b161a4c89a31
Date: Sat, 7 May 2022 06:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.07-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651904218
