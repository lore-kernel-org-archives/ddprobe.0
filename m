Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F751C8A
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 20:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644871585;
	h=To:Subject:From:Message-Id:Date;
	bh=8/xXYoHP+X1j2mNDsoWV9rZAEmlAC9VLmkEII9D6kGA=;
	b=CIcR+AoGhF5mwGtEB0D73l8HJFLlCWRl85VWhIpmw6GIH+jbJBiz9p1VHbIHYGx6
	OYDAvaKHcLtS28S2JrW6M3eNq2YZsHqiFdx1fdgCl+NL8wfzbRFFH+1IPynkvl/TpPm
	NP2YmlXPRhm3amXOvuvvUdRwztbwcdi3l7rUorGQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644871585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8/xXYoHP+X1j2mNDsoWV9rZAEmlAC9VLmkEII9D6kGA=;
	b=Ukss9tBh+DMhdb+XEM4ttGpKzwD2Ngjm/QE4OFPduIOTu7tS8KbsiOzIxPI6ZY5l
	rQD2PJSnH6lyGUjkYIOYWwILZSNXjw61F1rN8cwVJoCl+ML8RdEVlsadPm90yYRuzgj
	5iWz4dAxsy2L3yvN0ZjkLJZLiQxS94CIkNZ7X1UQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9fc8bd0-ddc349d7-2a4a-4c0f-9775-4918b68311e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a86fc7068ec8e86efbbea2bc414bf95583b7769577930943da9957f9adc7bfe
Date: Mon, 14 Feb 2022 20:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644871584
