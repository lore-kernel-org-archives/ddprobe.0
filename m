Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04EB15A7
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82621C433EF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673315487;
	bh=pqirgLZlnzZKsMSdGOfFcEXfQdK5H/06Q+krS+aIeOI=;
	h=To:Subject:From:Date:From;
	b=MB6NIdBsKNj+Pt0hW75CV2uE0ORqLeDbQ66oPaX1yDDYCoXUzBlW7LJhjQPCgfjyH
	 KL5k4aHIXbN0ewpfUFQLFf0jBJZ24TPR+oAzg+1/qGGkC5yB2sKvbWiI8s4ekS0f3m
	 B2Z+oOhzFQrbwl79XrfiMnHpNcx4iUJiVdvwXLwbycjpWE9R+S3soPYgqF5p20tkEB
	 /qw4Upso+QUqFiNgb52qcN7Spy+QImUK6QyqWRmsm/gC6wjp46JOKBV2yINxyQAowf
	 jiw1BJQPS/y30MzfgcsxI+++0Z5eMKgACAU5Mzg8M/zzSlw5Dq8NaT1uD8+KD/tPN1
	 pKsBCa1HTS2Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66802C54EBD
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 01:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167331548741.3170.10664825405100992094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26716dd9c7b8019c697f8684e3d485c2db982d8b8d9825d024c8b6a66f6f7b5f
Date: Tue, 10 Jan 2023 01:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673315487
