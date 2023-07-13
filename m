Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7329C11CAA
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:49:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DB6C433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689248948;
	bh=XBIMrw+x+scCem+R+JW6YxEwj3rMrCVjxN5CWEPb8t4=;
	h=To:Subject:From:Date:From;
	b=uVZ8kOpmrc7Hz3euvMdjpmbPc25FCUzG4clONNMwaUfW4gwso+15+tVw1jQ7rqGdS
	 1DeCntLmABI0BToWf8DvmS8VqLqiB/J+YFWuMzUfyRwNm9o+lKyzUxT38/63fMk7ZT
	 yCNwumXn+PCg+5RyaC3RNvgy5r5ps9Y7ZOs8C8KOTWwR+qaxR/fgIgIQZYWj5/ORfl
	 W/3yuSLlijUNNSGGueycMWbxM/ULIQumtpNzviMN7Z8GMN2P2xR5ohxc4tdZ7tbWTH
	 1/BB+H4hEiGwtgo/Yrj4sGKlUecjcsorLKCdKE3xxIKlHbJ7n9QVz2FS+ETXi+WPae
	 4yXw0Xmt/hsPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7777EB64DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 11:49:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168924894872.5218.10567833543550607588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b049575cbe79859984958f9e05a9610cc53e65ff1d6b13d3d838fe81361a7382
Date: Thu, 13 Jul 2023 11:49:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689248948
