Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CB863B7
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0456C433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670601687;
	bh=sIg95kPmYheenJ82QapP3DXJA3RsyZ3s4Yxq0J8G1C0=;
	h=To:Subject:From:Date:From;
	b=qWoog6ZGEu9zkuR+csq1UvxWIduLwdwKMMTeDcbVeaOnR4ytXGlslKKY8S6Op3yuz
	 00OolpcYI9blEGhxvkcRGA6EfLfEVR8cy9Fctn3YfBDWgiXLbd7dclQLFt2Csv5Cvm
	 z7iLKfNXwQ76P1kAlJQ7/Ais6IpyR6JIQMbh2jTysO4kaAKZwhu7x47i1Z7ILqt35x
	 6Y8d5RJQQVKFakOLuJENN1TmW1XSQgx4fvLVb7sFY27kAkiR9ZOKduItDf4OxpDf+l
	 Bj9LZAcEi+EI9O2Kxd989BhIULsCMs5iDrKANJcShoAlQKBkFt0heWfsP7ihvhPUmc
	 sI930PaFnat7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBA6C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167060168749.1986.17256241207097897110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6263897581d97eec4fb7bcb24eda839eadee6a050613af812e9d11b5b0966b68
Date: Fri, 09 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670601687
