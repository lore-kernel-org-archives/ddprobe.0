Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FC77B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91866C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672978287;
	bh=HNqEvWNA2jsqHf9m3zbYBeaw9ZAMUyccuie5Y7A3Qaw=;
	h=To:Subject:From:Date:From;
	b=TvT+l0MYx7kmyYpmjnHqZit+JeWUUKE7RiYHelz72e8+tvNQvNyMVkeagIx93107A
	 NbMrdF7Nxry75s8aGUEIl2mFa2JinJAMh0cBtJjzyVuY7P1jxZfD+4BfuypealCkAE
	 VPf6d9D84ozAF73bUhZEVbZV3Cl5g4Ej8GmYEWQ8+XEP8ZXUIee+twDSz16JbhE7Vj
	 D+AeZt+1l3/lhILANd+UAFrTxHIKov0z2uv9d+99WlXBL5yljI3cUn5JEv6L4Pvdak
	 acsHfQvMDfp1+9YjrtG7ALscFHUqD5MdKprII3ZpF5NmhBjhuPgOahf4uJbBQjbi8f
	 HujHtoAJl0BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7266FC3DA7A
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 04:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167297828743.10173.6397732348253797457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78f3c4b24d394d2474c4ee9202f13658dd179fad3e1bbff3943cc87e7c9c0dda
Date: Fri, 06 Jan 2023 04:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672978287
