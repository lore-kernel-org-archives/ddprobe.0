Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8033779E6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCC89C433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693565648;
	bh=KUl9CTiX4jIYHVMDXt9M8LLJLwng1x4YOl6aNQ7Z0h8=;
	h=To:Subject:From:Date:From;
	b=lErvAr/RXvxRI3xVZDzLFvf1+ys7FHCT7Z3dgmGLXEqPkcCVfZ7v088FtPH/VEqPT
	 LWWvljJ1xqDqCfv5CXtohOSEC6dgjfI5vGoH5ngmXbWCsZ6C4VWZYGkuY//TKKJsry
	 1B37Br3tXhSxdRTeaZopWj8fmBSb+LRptzJzg9wLcwI/qMT+k0nafFFi3WGXLyKNEu
	 K/z8G3lq/5/X5i6uCBFfB51wDtVp6ztiD1s0tY0pHkqcrkrW2CHcSUN0/wJNKZTQ3Q
	 YYGQmYCo5XJVN9k2sTSpq2xZl2bZ6ivCYOfbvlj38GaJxMpYUMa3VSRGsYhU5Zlce7
	 Yv1LRLY4gfniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB466CA0FE6
	for <ddprobe@lists.linux.dev>; Fri,  1 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169356564875.15175.9568715206852542779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41ab75fb8eaf2a3d4b9f629ab357a39e90f7fa1c67fe613c952fad5e7541e30c
Date: Fri, 01 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693565648
