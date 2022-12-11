Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9E2110E5
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F84BC433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670747487;
	bh=6WJ7U+/s0YcNrONg9yRNYktNn4Pvt03bJxswuAhT2N0=;
	h=To:Subject:From:Date:From;
	b=bdqjc6nziYgUTuzkO6AH4Tsp+av8PnZWiL84QViBgYQ2DXteu+5hMi/x2mJQo9Wd7
	 u5olMlKe3v7WPQ2QZSyQ4cqnAjIeiOK+l6/xfBOArg03PtX0bwfUWfa/IBJ6wlus60
	 wqX2FRVwAeIhodPw3Tc+UpJR5TpDSqLbqKxhLsZ9XODLuVjfQFWg8gXfqoBziqsYRH
	 Gxv3nAf6yMtvv4+no2o/xDmYh4KlE0aD3f7ToH28x0lSEQ/2CEyYnyUnX+RqmCWXCl
	 p+rBUxayVB3L8udq+PQUoDEE4KgkSuxcLLuyl2K1sXa+6OP7f4ay3SoQvdXj6OtB6K
	 ibUhq7zodt31A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 724C7C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 08:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167074748741.10975.6605884941825152463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db6dfaa7e273a1fc31a158b5c39dbbef837743a1f48e61b10d7451664686b681
Date: Sun, 11 Dec 2022 08:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670747487
