Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D65D7E9
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51A8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676855885;
	bh=JnvAE6AiRJg1qe4ZsQumnEMbd81kUNP3F+y/LD9pQCs=;
	h=To:Subject:From:Date:From;
	b=tcPaZrlBnt1owktBE1cSQXnW9D7Ci4NQaGDdVGbRStPmjhH6yoSkDwpOn9v2emCFw
	 f2O8LkRdrDEXqT95MQglrsF65PEMSEZMUL4g1KIj/OQC3opWo50M6PNC6nsq598qNk
	 NzH/aaGe4LXfDJEpbEoBOQZM9qzM9omyeiUGZl9oiU4P32PQ9tsmFC5oqTolLOwPKs
	 ANkawaxAzlvjOVkHQEm5yZnE+UDc/ESKkM/yW7yvKF5tql7KGa4kS9L0rcJmAkiQqR
	 jz7EzAVb4AeC8A3GRfqAGIWk6CR8QYSmGicgpDReDZekne9pNlk5FmHU2s1gW2IzTH
	 otcqOz82WARSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4460C05027
	for <ddprobe@lists.linux.dev>; Mon, 20 Feb 2023 01:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167685588574.4523.2768541151158102770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f119f09974a6a0c01610935936c2133680f01c1aa998e6693d95477c621e7f9d
Date: Mon, 20 Feb 2023 01:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676855885
