Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA573FE4
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 03:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAq/Jhks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92579C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 03:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704856696;
	bh=o7ZqlsQvOMd811dCSUJjzNQkLQS+euh4Je4x9ytCel8=;
	h=To:Subject:From:Date:From;
	b=uAq/JhksbFX6uJMauHXxkvB63E+gD4VzK8aXzyMnqjEj04mjE4wtmDzFUxn/nkfCR
	 ZeDSlmecvUjnLYQDlAG3m3qsZ5uTG5aiCNBhhWBLjau7sAhCLIRw/tMA9a7fKQOeYl
	 1R5MKCyZwThfZbpqabHsd6iNfDXBwpo1Fc28BZeUtrX2nbabRrHtNp2WOo8fUMJboD
	 Rb3NzWnFhGA+y21dofSndftl2qe4p8G7NrlmNiX+hLeo8t4flOR9BUfb/fd5uJnrZV
	 6cv2+IUi1rt1YT2vS04SAeF54lW07ShBOmy2Fv5nH7TZcI84DtfcRJSDT1JwDq8TfK
	 brDjUdY2fDhmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69EFCC47077
	for <ddprobe@lists.linux.dev>; Wed, 10 Jan 2024 03:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170485669642.13361.4058658843822088846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57c042991106b6120077a3b9548b05c4ba0b39e1cdc44ebeb0e5014afff0bb0
Date: Wed, 10 Jan 2024 03:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704856696
