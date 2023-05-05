Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570111FAB
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05CF4C433EF
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683295626;
	bh=WO13QkmpeA+0PegtMFNVHCdu7rztXTHkFBVeES1EDp0=;
	h=To:Subject:From:Date:From;
	b=UIgq7jtDcZUj+aPmJPZnegCnk4TSxWHShvgLA8kofbe4rRx+Nz0j2QEBEb0dy7pub
	 kPjVRpLdLV6H+vceSzBOKmL/TPQySuILn+XDU3YtzvXs+VqYtDi679tkBOesLB6Qfa
	 nybhPDA2foz85L9McdznJd4vSzI0KxFdOj85nAGvTck3CMJTdTwaa4gZoCW53ZKHDx
	 /ukSrzi0Im/ufWdFNyU7KL3dYej43Iz4m2jqXH2zzSFufpiPRoZd7q3B4MnvLjRR11
	 rixiBlO9FCR5bmqMja43QNWmGNCdfqPj/e/1lEmSYRspOrQpDOEA0cS+O/jf9wDKJv
	 vLXRXgCDFthjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D22C3C77B7C
	for <ddprobe@lists.linux.dev>; Fri,  5 May 2023 14:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168329562583.22322.980576920730748836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6fbac8eb5b3c98a2773ca226a2896de5a02de8ec4212a74196c12b4cd6748bf
Date: Fri, 05 May 2023 14:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683295625
