Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5040366
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EDF6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664170853;
	bh=8LnVjnGTIjj+djsK6s0KGxc5t8RlVriL69oi6NpwPE8=;
	h=To:Subject:From:Date:From;
	b=MsrfUp8TWOd4pNoOboaykXeHVU/zu7pO/A2PItOiwNbke9wVzChYUpRMIegtCuSiB
	 QbntK8PY2hNgLPn+Ryk3l0h5gcO97vUjzTAg0yNFPJEhNV+LJp+1lq/QkHSdCI6RSz
	 MQm8NoLoT1E3MA8RmvUJ0kpzBWfRXIo344MTFKxrbJzbNWOMyMhfeKg2ugjwEvxtn+
	 dh+uJ/h0P1VxQ+/2yeRwBA1j/6W0zFvkvi9PV1rlFTtNaA0TcqLUM/UPtr7Is7xK6o
	 6oqSmWjddsnUapcisQcQRWqLpeUn4gYTOYEgKCe9m10+31hmHDy1iVLCbO7mwssV9R
	 E+Injakr87z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A2AC07E9D
	for <ddprobe@lists.linux.dev>; Mon, 26 Sep 2022 05:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166417085333.30164.9609727850201715695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891c412fe2fe019140551fe01511c8e73bb5948a04c04244059137f4136dbd69
Date: Mon, 26 Sep 2022 05:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664170853
