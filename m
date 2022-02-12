Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75E547A
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 19:00:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644692402;
	h=To:Subject:From:Message-Id:Date;
	bh=wT4Kmhvej3V4zpHgMSdBnrqQ7sQsSrUTg8dg/RXnNYU=;
	b=IekBMbP6IQR/ywiC8rFQfkUdg0bIjtF04YGieveWl6viXoMpJYuiiDjQOl5KSTr4
	jO8TwUyzrXGOz/89w9uX7naQcg6ilVoutW0MXH3BWv0q46RQvTgS3xV2HAXGoaM+7aH
	Nv1YH5IoUooNXdVrpVzda/5kNN8OhjNhf3k6uGPc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644692402;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wT4Kmhvej3V4zpHgMSdBnrqQ7sQsSrUTg8dg/RXnNYU=;
	b=kwWCOqXs4KOlZS5CeEQM91pPc/1to8T6xGaMXhwowZwad6u+YNTSiIyfqVd5hUA9
	f4gaXfXBzIgYKVYWxCOVL3iNBZKFYxKgOnzKCkiyc6NMX1YjuR865vfk3GClb3JtZvs
	bS9E1ZDeB343GyI6jauIUiIdvE9KXSSvy5FONBow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eef4e6f73-75da15d4-491e-4ddc-9b3d-4ac8cc159088-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ece1864580f8b071839a4a69dd332eff0385bc9b176922c65458e089de73154
Date: Sat, 12 Feb 2022 19:00:02 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644692401
