Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BBAE2F36
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 21:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657400812;
	h=To:Subject:From:Message-Id:Date;
	bh=f+k3Q9Sv7KMZWpyQ2lI8L93wdv8uGWEKSOw8Zu9x4F4=;
	b=Hch+VSe1oCXnF//ZjmXBvUIJlPCuwYt5SXqlSMyfiOnCKyOvbzVMtb5mLYYC95yj
	OlkB9e5N2j2TOzihMiySImFQzojihCfmV+a7+It6bIAxXA8xvpknIVHNvVy54XCNygR
	fLhl8/TfrPoNzHkes9Hq5N+o7jmEXPLZzeDhP3xg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657400812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f+k3Q9Sv7KMZWpyQ2lI8L93wdv8uGWEKSOw8Zu9x4F4=;
	b=HUlkttUwdBM9qX+V7w0jjgY7b8KkU+TZFagQmPCV4e/WMAo+6L/JRBUeocC/WrRo
	Y5/ez9XxtGMrLMvbJpdrUt9Wh+QGFRf5HPcq1G1VadgO5pnY7KeZMBLAYfEojW+1RKD
	tUWFPkP/D/k2670RJkhVb5RYzC6NWlHvP2RdfizI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e4c96343-a6e0e27d-0a9c-40ab-aff5-110d33f3ab2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9aefd657112673cf964794a719bdf42d848753c25834c7f5865a117ebe7b46b1
Date: Sat, 9 Jul 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657400812
