Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474A623BF5
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 18:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF53BC433C8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 18:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690308728;
	bh=U0GflQoxKj6ETKvwArAoE6RKLxL9eK/YCcpumpvBoAg=;
	h=To:Subject:From:Date:From;
	b=I/swWEOSMPWiDbccaAbXqnCghXHJxmlRAzeEyAwT7kkmeS/0vvmJDfE5pHITEoFyw
	 oKJf2QSs2kaIfN17Qivl/p+FT7ZQeIc2HgKIY3lD1SdVjtFT5KsbfvVgJSv0w1aOwW
	 6B9oBodEZr+zD4KiVFaZfRSCXaw4Ppq4+QIsN87Wk1VkkYtXjlVNBmszs1bltcYqYP
	 1aPg8r5dbPLmHmDgk0JsEUzR0E1WsDMCosbHhpL0J3Zs8CPjUhpExDYPKIruFilbr5
	 KDHbHEhIM9SvQAjLAiq2U9NB4qB4a8EOuQA3DaqscnUTRSmHElXZmc6kvwvMx+Z5a+
	 /mlvy6HIc14wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4845C0015E
	for <ddprobe@lists.linux.dev>; Tue, 25 Jul 2023 18:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169030872871.32418.12718925713635261959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6c9b96765ee26b41eab9739e39ee8617a9fe7e499530e2d73fb86ac9d094e3
Date: Tue, 25 Jul 2023 18:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690308728
