Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D62B33CC
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD0AFC433EF
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681381625;
	bh=FtEtCj/Ds0u0ZthFF/x1K49VCIwpsIOA8Qr7dy61Xhg=;
	h=To:Subject:From:Date:From;
	b=RwwKT6wtxPAxIpH4u7bA+9fjgoC6H0/Vzre1ngQUBKMAxMVX68Up58Kr1xBWpaCZF
	 2YpxkGIIDL4hSCqo7WRkhQiHuNvcgQF6/wbhedDlYSqOKXjy8V1RwfZ4vnT72kzqEP
	 Jkhv1rZOMGUs7tZRMX3Dg8L73ugjmZZBDlO2+2GZ9wge45jlnOlRpoDUy1EWodv1J7
	 JaRocg9qFPzG40t9cgUHxj2aZb9AmvCtCVfADChhDCtQ9YupXrXkhpbQd7gd877sr2
	 8EikxHTalnuooOCmDIOD6EgyBTLYWcHckb5qrpnDiQ9GHL28p7SE4Muc977BklQs8Y
	 HKWX6qR0ePP1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDB0CC77B6C
	for <ddprobe@lists.linux.dev>; Thu, 13 Apr 2023 10:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168138162576.19383.1266219325829428083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7630ff8a5502b72dce2b6bca4f82c9671e418e6dc4e9a798260ce89f870f23c
Date: Thu, 13 Apr 2023 10:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681381625
