Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BDAC7B
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645554085;
	h=To:Subject:From:Message-Id:Date;
	bh=XgoOxcBe/wfCBUNpKm/d9gn+7rS6Cq370Hpd5lXP5qU=;
	b=QR4UaMJzguh9217o4uhJokKwXVAgpMAq1OuSd9yoUBH2OodfXE3guIvXb9ew4/u/
	V+V8YBRUu+F0dfGBYZWX0qbq6gT4I5oN/gfgSTrWMiDrMO2eM4+k7I0Cqj99pXqNX2d
	U84tJySQiMcnMVfQbW7xWhX/S9+hri4sRU7mpngo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645554085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XgoOxcBe/wfCBUNpKm/d9gn+7rS6Cq370Hpd5lXP5qU=;
	b=RRW6go/rM8h8DPceoFcOuz/NGZCXPVaFxF24aW4oZQAJF/gFhDMapfHLl1eB7Qsc
	YgpPSmrC5h6+XkNvzKWzazUNG7KYGKUJWuZw2m9WHr37CfES/ueN1q5LHnuRmsJ7dub
	9rH2ZGHhSVmIpa1uZV/L6N2oL+Au+h0oAg1nzS/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f22aaabd2-7612a4fc-6909-48df-ac15-5b094fa5c615-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d311505b2cab17f23c7cc922619fb92739940f1744da6d9466f9a3c4915dd9f
Date: Tue, 22 Feb 2022 18:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645554084
