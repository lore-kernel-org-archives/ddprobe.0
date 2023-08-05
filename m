Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561612CA6
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28FBC433C8
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691265188;
	bh=Acc1d6lrLA0j+34zqMlQrwvRwTYJFc6SxtrG/8roHXk=;
	h=To:Subject:From:Date:From;
	b=N/+kNhf0EjIEcQ80JIcFNaK/zX80CVlcuNQRvHsICSQ08DK7INxOvDxklP8IYhf0C
	 tfZ7nwpwbcpXOQ8r/LbHos8nkvcjLXYwIATGgNvHxaGgyT/37WXhXZx9+OZiS1sZoS
	 8dWgSLG11VKnN0AoMQ3l+0PhGdLHO21UP8zWtjccE4zxC2xVCUV7wOvHgOO87UGBnE
	 WO2KEwI6cLVhhj34dPne+CIwEpMh6zFzs8qCi5KnafEb68jrjM1vLsbZdmMk/Qfnf4
	 dJrGN1wTcFSSDg+eT6b6uGyCGzYKdcobkLq4gMNsjBGJKIc+sgNMFCo9j+ZGAbCRpw
	 kaj8vPE9JViFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A3FC001DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Aug 2023 19:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169126518867.17942.1822668036481236854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5fa77d96d17deca04ab55ac09fdf20ac592c91cbe2ab825f8eac2a0dd0d417cb
Date: Sat, 05 Aug 2023 19:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691265188
