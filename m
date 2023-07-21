Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66ACC7F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D007FC433C7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689908528;
	bh=XtnebslZvREYXoFCLZNG1hyaQQ4JUfyWUBvjtwQcGTw=;
	h=To:Subject:From:Date:From;
	b=b/IC5Q2NQEk1hLeK2L6Bz6c0UIC6mhDZzluIYxzstsny/MSnzgreF6IuRefJvwd/U
	 YvbPiII5ILlMgy4Pmin0i1isR5KuhXD9xUpQjwqdJvDGciuxRfq1FRw2qAD9N2jP/S
	 G1AwVnK2nPa6PEn+tdIgbH3TDtFfBAxPioPqW9s5RwV9cDReqFRkKVlWeAYwNXmssg
	 pvx9niD+i9HKyB5GMQ2SgX2FdBseYRLLGA7tH5UxwS01xwkKRqcvbrbeITjvwFy5Pw
	 PuditUqyW/q0sTYtNBi3RW8zLywyySn5PJDDODjnOXb9/q8Ft0/o2F117t05o5ScMg
	 rFr43oGTNrKhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6BEEB64DA
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 03:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168990852870.11461.18077792746624512069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd29b581c894929789a26220c552aa5203ed31187b33786cb2697664b3d50bec
Date: Fri, 21 Jul 2023 03:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689908528
