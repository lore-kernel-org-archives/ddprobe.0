Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66703814
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 22:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647988584;
	h=To:Subject:From:Message-Id:Date;
	bh=ofMcALhYRocwoLBMyWo/1KRK1N1kB6GHqmBAA6AlfnM=;
	b=ZYwem8rPUBoWMWVWvO4Mc/+/EasNwBZr2iVsLMbfDrCjhbZ5nGu1Czk3xbnx7ehF
	X5X3ltb/mrjefpHpQxJopKR+HxFRMidNIw/9Kmc1pdL/pytEqDi6w6sp7tDYKH3S/qt
	jByg89ZHU1a8zYvJ/tA+IG3qw5E70C7X2FKxXbk0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647988584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ofMcALhYRocwoLBMyWo/1KRK1N1kB6GHqmBAA6AlfnM=;
	b=jr52ItfIRUeemPZJISjoP0Wgj/pO5FBYx9Fs7WDYwyB2OzlcbzZhM0bwJEl8o0cy
	qUkPSkpltLU0u7PvE8TzsHOeObhqYlVTwkkIO2OF9B9sFOUlqEnp8qn5JFslD4s+793
	21d7A5Sp2s57jXYIJdOOZg3AQD0afyqKOMg4Bg1M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb3c6313f-bf3968a5-278d-4b6a-a810-3afb5c822f9f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ea1bf6579c0d294fdd8e502a0977ab2d047b3ba552bfccf459e07547abdf435
Date: Tue, 22 Mar 2022 22:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647988584
