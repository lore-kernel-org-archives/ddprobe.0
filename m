Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517A1440F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02BACC433C7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689035829;
	bh=fPw+zcRg93+D/ODg1qghKTl8ZCN3gEg6d3BKUYrDZAg=;
	h=To:Subject:From:Date:From;
	b=nv5QeW2LyaBBzrctLxz28trp20pT4LWb+wpYOESXXZIUgngnZeH2MCLp7v2HFjg/H
	 v7fFDbwWJJQV6wRLqC9N643K96JeSgqsZH3MwrEnegBCKO/1WJYejzl1zQ9GUQVrBW
	 J6Xd+lKU80qg/TaI93vPLubOL8JmNcryoFv2frTImx9X29vtFkUZMJHYTdG/jLK7EB
	 UrG7DNP73L5mShly88B+4c5+CVPfhGyoMhm14ydFbKy2nErE0nq6SSYxNKu7CPjnZD
	 ruKvXugklHlrc8Fn5P3GuBwopQOVMfJxrtb5UMzOU5rzIYBODT8/coEC550FKlnDVy
	 RWfaKAM+4iy+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5506EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 11 Jul 2023 00:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168903582886.1581.413061638706809935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3013d2cb63f8017bf96e0f8ddccfb86293c5108f0c2f1499852cac693bb12a
Date: Tue, 11 Jul 2023 00:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689035828
