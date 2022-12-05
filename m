Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21B123CC
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74CC2C433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670237454;
	bh=cCS8LAfuK56dBTIJZUQUJpq4tONhCzAFkSgbc5n+k6E=;
	h=To:Subject:From:Date:From;
	b=UzBjiYeimiPQScb1zVC8R8PNjS8DJkxx7cMrAzLk5owNc3oeQsTDokY1X1/o13PMr
	 8Jbo65DdZPhu9bhKsUO6clN0gAt3Bk2MEHDFLT+oTg4wqcW+PqzzV6CV0V9y5rS+g3
	 8w5cgxt29ONgJGV4AWpcARmybPT+Udsgg8ALK4pCYNFjAxLvxzuTM9Wom7RqebBlrL
	 LovdB8L5Xu3VR04KHO92MVOvrxPycjYtd+J2XNtkuNsSb6FAtBD5vnyeom069xfq5D
	 8SU3rLyjBcSx5WYSnDMxD3iI6P3g4pVEdkfIY2l4Q6C5xt4HNpMR/Phe3evqZqGT4F
	 qBGw4zjJtkC7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56197C4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167023745434.12052.16091536342797418252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d16cf764a793e170cd81d40771e4a18da5e1c7ea9dad55af290fbbd95b3248a
Date: Mon, 05 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670237454
