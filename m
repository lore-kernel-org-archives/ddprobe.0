Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102B14432
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:40:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE946C4339B
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678884005;
	bh=091PXOJLR7huqWN0AjI9XnpP+WNo/i7tLu08EoM9XHk=;
	h=To:Subject:From:Date:From;
	b=ALkB7/yhJbtVNbGn+4rygKKiCkwDdGLA2x//ak5+yMWGs1eyGOn8EE33IHFK2+w4u
	 puzQjd3jVQwmTVqkPqxAW2QMETLp09TOjRlMMGZ2NQZr610Qd6ZVJgJK19Op+djuRa
	 0lQNG16ih+GOSje2hB9TQTSKWwvQFRzJ4Y7+vUD6JrkcEqZJnNrPjbDmPG/UFY8bvk
	 lmFeVPZH5h0Y3QLUKJ0kFaafDm0yQCAEaj1RhCE3u0S2F6jUP3yjZmOIsMj0vFqFO7
	 QSO7k70Dm4q8r3U8SLKkthikR2mPqfcQNGGdKHAgvoZtRfXRlsmLzJHmJAG/7MW2hy
	 6q9rJNdsTtMQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68FBC6FD1D
	for <ddprobe@lists.linux.dev>; Wed, 15 Mar 2023 12:40:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167888400574.4154.3022413681284636699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e4049401214b23a558028c0e86eafc59d874a58b8fb0de7051a07f26a143fc
Date: Wed, 15 Mar 2023 12:40:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678884005
