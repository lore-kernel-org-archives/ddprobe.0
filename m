Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CED0A257B
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77BFBC433C1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670317854;
	bh=qL8Ndehc4yp+wt8F+7fk4H/3HBq4DYq8VN+a9ybwCHw=;
	h=To:Subject:From:Date:From;
	b=lY59QJyofDcJkRM8JVA2s+aSgN+NqhHLZGHA+QTVt+DFcntvic19PF4j3yuOJpWPD
	 6lFNqYORjcxknL3LDWHcIFECFxIPJDhlxKGVxrLPXf7UUzc4Sy+xuXSxaclGQtS50c
	 SQoTBYhFJKQ/NQKwtTC7voqFgvLdNR2brLjJlb+/5uG6sHgFyChkCqeDyTN9wqQ4fk
	 aZ7zb+wpx5EciqySpKvpseRO9UdcWeMCSrPr7MhWFyO2zqYje9FFm9+JGHiaEupfzR
	 0o9yA/1OBmG+x2cq8v0Jxe5qNSL50jvNOelltV1U2C9eH8cUAeGVQKQ1y2B6cbApqB
	 sgwfmLSiCkt6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5957AC352A1
	for <ddprobe@lists.linux.dev>; Tue,  6 Dec 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167031785435.21918.116428409094176638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297aca9739dc4395b9658dbfffeb56870c643aeebd3c0e33f295525be937de14
Date: Tue, 06 Dec 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670317854
