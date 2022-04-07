Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CA433EB
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 23:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649374798;
	h=To:Subject:From:Message-Id:Date;
	bh=5uVlDkCFjGLbmlwP9qn2l3PM4jHuidT2uPlqG18UK1A=;
	b=B/kCaIwebo7IYNct8uEfnNVB5qeRDbY1f9sGPL8nMgukyqyuW+vpYiestjHZik4k
	MyKoxo6zBrPAAcrzUxjX7co7MrZmGnFVCmcmTPMidv9BhKxYJbP4Pbb/ZNmAdVe6F3q
	dmkbi5O4IrXHdC8T45TH/RG+cYamS/LDgQhUjng4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649374798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5uVlDkCFjGLbmlwP9qn2l3PM4jHuidT2uPlqG18UK1A=;
	b=h5H84g/zl1c5sGG99JUxyY3bkStKnQrgSYzeAQKy9x/4rTSqSoxyRz++hVbbvFux
	qRriNY9dcIVLFLWuRXMAJL4q8WfDZFzj3kuzKk3hYvPaD1K9nR6+A1C4MkaOhXdxVke
	+uz6OjD3Ff/AJKLtGDkHcmoGDbyg2vl0ZtyFJqk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180066621a3-31c32ca1-f1a0-40da-8642-e54bf70ed58c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62b226b3a552092e55839c763001f760f059303d22024e14100f2ac21eb42526
Date: Thu, 7 Apr 2022 23:39:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649374798
