Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE16C7C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AF4AC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670224254;
	bh=JzlshELs9V5eR8sahfOPV4Sn8Var+MA5s2tne0LmKJE=;
	h=To:Subject:From:Date:From;
	b=cX8CgEAoikOFvS1IeJWYRbpkwcaRXmzDgDBF9en1mrKzh57Nkp40SFmRM2ASYX1tV
	 Eos404jSwJ5miKyuhtfwxmZcuJl+RtJ6OZAPAVzRvZKu9en8eSyfTD0cjSF9G+t++T
	 I3YSeEKfcCwLesEB0cqo0qIvQV3uwiKBAdSS30TLaTyfATipdtckHdLLtLOL4AeEvN
	 e/LIh8Bh94SvaIaBXvlFkTqDfQdgJ4OEZbwOZVpQPuhpAUdqatW1fJK24sDXlt4njW
	 boiAmC2wkRLAjyWErjJZCqP6+FAsQa0fL4kFaUvItq9MMtlqxfVPaeEEbdSs7JILyZ
	 9iEFrNO6E4Ncg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F86BC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167022425431.4566.4325436350829688408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fe9ee25708abb97a9a0d35586f25588bbdb51b9379535d64f7814b047e9d8ea
Date: Mon, 05 Dec 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670224254
