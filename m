Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3361DC941
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72E8C433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681926905;
	bh=VzDCOARrn07zfShDWlbBQvVFPIec1Se0xxwb3gZr5Tg=;
	h=To:Subject:From:Date:From;
	b=LF2q0iazrrht2N2+fEnYghlZtHBsN1irTzRYYPyc88Z7xyLoQu+p4pCUzgXziFQ5w
	 oFOxPjuS0EJS4lwSxJbetv8O7r+rDSF15PWLyJ/fP+wR4FNiR247949Yp1w1sJl54K
	 0p8uiX8m8jCSQv4CjxAWcy6w46DTVDW8XaBNP0vRckKIegv5EY2WD2tZr2P9lXcniR
	 2zGOHpl6a6ptRjDLNMnM87HO1ZTWcO+/KWFFZ8K9GCveFp5ZndAO4UwpC7DdDwVMh/
	 uE/PeCnuww8ebc/vnCBChraRlSt0j/WQ01FQIxx2/Q7t9cQ0vMvfOuP4cy1Oe+yYBb
	 1wTneLRC3ssyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1E1C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 17:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168192690576.24150.10019087432763915688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11fe8ca76b1d9c4d7c42682eb5e427e027e83b4acc2c035558e5cf02c141fde9
Date: Wed, 19 Apr 2023 17:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681926905
