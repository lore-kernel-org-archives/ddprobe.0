Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5AC51010
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbSObdvU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7CFC433C8
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700608096;
	bh=M5znVyahokkbi/DFMnoNdCjjjvf+LlOUQpCwU5VMRvU=;
	h=To:Subject:From:Date:From;
	b=CbSObdvU3FMq9uvfvTmLB11BPgQOcBxGYdMMoLx7149rXavoWmj5TqTIm52dX7v8C
	 Wsq3QuwSymVmjO4ecXdRGiJzBZWzvOA01UREJIOyAd6HZfAUCbqh5LjVAj1GY1AIaU
	 nhCPws4euefOwoswIZzF5/yzWU5g1nl790n0GRhk0jP0A3NDGMyCnVFDfm4sM0hz1q
	 ug6P2RkJDCPnWIWDGrxswUduPP251THTzaJMvVus4pAUbiupUDKdpMmnKJ3rky1OlQ
	 0EEdGq3ZlQGEIEVOQJ42/J/9S+vyy7gHnmwv91qMlO0NN72hkAksUeb5L7wtGUhXbf
	 G/quhmhZFnc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E519C61D97
	for <ddprobe@lists.linux.dev>; Tue, 21 Nov 2023 23:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170060809637.19114.12888052470794171086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c8fae9433f837be9e1be517e994a6d030b5ce27c308a38521bafdb143ff6a41
Date: Tue, 21 Nov 2023 23:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700608096
