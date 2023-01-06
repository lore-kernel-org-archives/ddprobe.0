Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFCED7E7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20F3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673037087;
	bh=zw0da+Pmbx+xwhNN8IaRXVah2Z/iKn5qTTbtTOSYIFc=;
	h=To:Subject:From:Date:From;
	b=rBDK+Pew1s8nk1LLbwASlrNTyfVnWHbFb/VLwZnjblTQ+z+GHFJJPhyvPu/GhKfkE
	 K21fsNqL6ogFjIWRoxGD65s2dfPWQhNBvLFWZqRCdC+su25TIDstu1RZajR3o+dblW
	 IoKc7O/GVIS5NuqqdyuYp5U5nLqzE1y5pIrzFWVvlU2n1wgkIzYBlG21uqr6g8BGjg
	 BO9FCvcbkQcgh9eR3KCmj6KVoklcIeenLSgJ3jAfaVT2hExh6IWPdQpVVFL40J/ly+
	 Bk0bjd4bPOsTR+q3+ZM6ZVi7hmy3jXt5hW/AC/lQzR7a5utHgLbrvXp6cIhA/LRTmw
	 /75q6OyKoOTUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7575FC54EBD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 20:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303708746.28446.5826699495647867515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bf36565594b0255e1fd55544a6a55c8bce5e9b41e4aa79dd7db5fe17969c9e
Date: Fri, 06 Jan 2023 20:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673037087
