Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8806106
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82D03C433D2
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671790887;
	bh=cbLqAVNQVTABNkww5SOUqtBdQeykARgapbu2C2zOJ1Q=;
	h=To:Subject:From:Date:From;
	b=aMz040IIaH1niGci3apAlN/4w9NI/3Ypv59nMMD5tOpTsbqFWVCoC2NsHQyPlJ85q
	 0SEZ6sav1BPnSu0oFsZrdipaIOTfU5IZcbfQlikBIG5AsQ+6tOE5KOq4+n1mDpoCYQ
	 KZtQYVZ7/HIO/Z7k0hXPUlSr1rFJ2HNTDvoL+ol3Iqn/Ad0mJ7zwY0kFijSPLIXbn/
	 fQmM/MtZXfbtmO+ISN6Sig7K4DMMbINRPjKsv3yoRZuUXhfATo1cKwpK95mVEGkCxb
	 veLxrsTqfNR5JbjAiswnEJXgIS+KdOma/moObVgmTd+vKyBBYBYyXbYqEqlLj29OSf
	 bHrSgz0+pq05g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6571DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 10:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167179088740.4404.9930512385123323120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e778164c0147393fc920780a2faaade584fed62c3ccc84a0bebfa8fd7efeb33
Date: Fri, 23 Dec 2022 10:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671790887
