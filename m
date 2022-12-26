Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8E811367
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E80FC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672063887;
	bh=repz9q7W4QZc0e7eLdMN5i22Dq3WQnlaj753RumpPU8=;
	h=To:Subject:From:Date:From;
	b=WZ5Q1rI71D9zrNULt1wjd/NvrPpw5GuxS2P+p6y/L6bckchxUQI23WlJrukiRvq5U
	 /fPQk4g9wPpqNUfxrzj0qgqyDkv0C55aoltXyiMB7kr0C34u+j0Sco8VE+PsBqzD5U
	 2VLRMYLoKGo3to+9xsoqyenhZpHbITHf/pnVVWq0e8naeoLYUgDTDAhF2zoEWfz0ap
	 dhmwv2tVISrpYbciCXJVPtG77lVdE4zjNDDaCwWSj7g+oxEq4KO6VNACwA4CTjoUHa
	 pM7Y2+FsoLTfYon+eWD80P1spTVlLDBoZ5xfLD8xzI50+uDXd7/b5XX9qAosT0Fg17
	 ReI/RkZJTlg6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62BB9C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 14:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167206388739.1184.792645056616672505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb3548f0232dffd0fa15113c20ced69630f7794205d40240ad2d5fd9e291a428
Date: Mon, 26 Dec 2022 14:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672063887
