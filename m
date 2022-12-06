Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3E7220EC
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A484C433D6
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670302254;
	bh=CuAqQKz2d/pN+pQGE8o59RV522AgtBKF1hEX14a90oc=;
	h=To:Subject:From:Date:From;
	b=OPSvkxzxuSmh3by+YE9YBC7XXLdk0VLMNtO0MQ/2WWHZWsEcdoIKwu0QhAja1r6lo
	 Q0+Ez965awbqyHS6DrDMxahr9nGjS90CBuOagdqrjbB38DUUKzjxzK5GFLxIt7fstB
	 8qjuRnrZ+B1fzrXn8o61PIjF+Y/aaQkrHygH0L8aWb202x2Oe7tatTHQB6PjD3ezvW
	 aZ7YetnsNi4Zm6wCpX03Ebv+slBVJuXoqAbMdBiCuf6DzWcq8/o1TEzjxANxSQnHd9
	 jBhTUMOK+XSleilMb7Yvb7/zBTO8E0ug0+9P2ZobU5ltBc19wRtzfS/Q2R7JfcSCp7
	 lBlZFO325oVTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6071BC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 04:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167030225438.14529.13792871337292788726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674e897658c4a45e63bfe90d6092bf4f82301dd2bbbf0fed45563a411a2fdf12
Date: Tue, 06 Dec 2022 04:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670302254
