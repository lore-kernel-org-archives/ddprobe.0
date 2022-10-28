Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2F7A2F44
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6ABBAC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666977654;
	bh=eWgqyWKRdPRYnRPqHiEQuAlC1kSffhFWNbMN2Fynl4U=;
	h=To:Subject:From:Date:From;
	b=qjYOmisFibvR5Wr6G+18fHu3fHHyOqt7Sb+Ypuwl6QASDvvwG6lUbiPasF49ObCI2
	 LXI4FwqE7Jw2Vencnk8xd5gaujpCg1HRN+pJVTtZ/heFGTmGulAwxpfIbmRu11TpMD
	 +uX9zhr2Amx92QFy4hySyzsdGZ7BxudXGi0joPzyJdq0bosOe0BkgO3DPIzu5jjY3V
	 e7y2EoA9w9TTr7Ak3zqllkJJxdI3+BBAAi2l2F42kT1nw5bUgAuq0mrqzGybdkiv+j
	 FkWaf1+qYYOTH4Y7lH0rk+APNMK32N+AvCcFowFVR2ZA5IA3U7BjdxeSa4DR1bpLmf
	 Qp1KThCo0LCcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5594DECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 17:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166697765434.20011.2839617556847179881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05651669184476568c84c2b817fbe2608f580172423c85befacca29dd6a30e50
Date: Fri, 28 Oct 2022 17:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666977654
