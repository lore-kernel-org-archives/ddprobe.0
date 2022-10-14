Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7CDD36D
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F9CFC433D6
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665724253;
	bh=zHRmtjFSvAMCeZ/+6Fv1jsq/8hOudytgnfQDlsa6Vco=;
	h=To:Subject:From:Date:From;
	b=G2cw+lFDo8rMyczTdnhbmgHuzmLwweb2GmMrqBEBJeK28x+DeGmYydv80JE3RX3UT
	 crpsp9umDnIKxpS4cFhdIRzh19AsIAktxMjnU2+SXRkcFlYMzGo/lIJVa6yfDuuKd0
	 M2ykefSrOUEtVn8mBO4owImtQ3uWjCMOHxX21+hBjKasG/tZINMaLIoamIr4YiGFOF
	 T2f0jLa42n7+EnSYtBsj3hgXTwdzPBlv5spg7JGpvC5bHJjQWmSTWlkRaaGF3Pw3lz
	 sjDlgc1D0l3MAldu8jtIllx5tVpU6LI4pk15ceLZ3D+RZi3as9frYk1Bb8hULDTmYK
	 duoW7rE2TqVSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 549F2C433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 05:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166572425333.23636.8372428497678554968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 981b1ea3df6bf84679eda3344f34cdde8e83c253e13eed5b265669287da2e5b0
Date: Fri, 14 Oct 2022 05:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665724253
