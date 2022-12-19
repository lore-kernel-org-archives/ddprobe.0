Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D989879C0
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74436C433EF
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671484887;
	bh=E0rOyHsMDzEKgcGnWtpkLx/LWrzJYMCF7j+zPaJHRt8=;
	h=To:Subject:From:Date:From;
	b=nFepgUc8XIvTZxjkqmQzo3pAABDlA2OSxXIrrzXZrPkxTZi/nbrpMLKksM7da9Ehg
	 4seOKapZCZEiTjkLurMLfPlj/rrwNXZMOsWI5h8BLvePpyTQseFDiREu8d5QrPXAp1
	 dgm3Ki586C6xnOzAGqUluH6WTIii+i8k5WeRIk7Er4Iwew0zFS5xLzwZjkwONfeX5u
	 JlkC4W104vAQZ89PVtmnhhPh8eUTcGPeAivWz9+xnGSv4wJN56URTLGRj9jVHSxdKi
	 jgvdydgBsdg4i6c+podqTmWIjA4HdBsoKrCEUdi+ADYTnAC+/hVwxLSnRuKIAWz/z7
	 /+/jI7j5WMgJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DD7BC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167148488737.3894.17806561649817699583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca201c1287bffa63e29e4d364b15e542515a7dde551c0869007c907958d6d5d
Date: Mon, 19 Dec 2022 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671484887
