Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D99E12115
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90F0DC433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673635887;
	bh=IOdD+jTygwjCkV/FPCuLmtch2tw2/TBzkQFSACVhc1k=;
	h=To:Subject:From:Date:From;
	b=T7BKK/4JuImmVm0lf9aIDUcv6I2Lfwwk6UGEO5Jl+A9c1xBTuDE7WewMED+D80EMx
	 5aQIst+BZWtulMhT+Fc0MVqmYEeD6YsL439jaMCzdMp8Ynfuo0BFchPoh+cr+tS2yJ
	 NNDCjPUrxuFnZeHv61b/8fxI+d1tsaEUy05D/NRbVg+NQIDtf3wW603S4+Vb4GInGA
	 pkAzysFtRdRc6JgT46+OXFQNIrxGBGO4RADlWZ9qhdUr/3P9aZvZXPC4COiEuVDseb
	 MJVJpKr5ZoRN8q3An/hlhG20zmo9aXH5j4ZF/ctTwlzudl4WYLosDXJHFCcXx3ekrV
	 gKzF6yL/baW2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BE7DC54EBD
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 18:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167363588741.4537.9827996175226919034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6a7139937ce4cb8d7cce7f92e47fa416aaa1f8a8677c3fce7bf2f793f2d9981
Date: Fri, 13 Jan 2023 18:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673635887
