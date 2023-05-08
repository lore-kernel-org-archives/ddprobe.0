Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564F1566F
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:59:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D0BC433EF
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:59:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683568746;
	bh=LSWMmHElg9j5hdzF6ZEZYLc24A6Bv9r2xhJYGFfVdMM=;
	h=To:Subject:From:Date:From;
	b=U7/YjTlHyuj6+ytihGKdiNUvGbjVTX+X1Ct5LXlyz06lPos04Xqi+Z5W/nbuRz58l
	 GRKr6OP0ZXEC1QuZB3kwQWkLYIGpofHDiweEh4pWpWTzrQSlIuS67hNpS5cpUR1kcD
	 uwm1y5rdAIVflfdUBWRBuPyo537mi+p1oCXWvI5S6ZwUPv/7UURoXnynZmjPClz/Gq
	 dif8IfYx67lmtYg0SgyjrwqcTd26w712CwhY0jDfitd5j6D22J45NKO9LZjSiey5cf
	 fNdGGNZrPgVf2BgR7PCGjL15HxzSRYEhKBdMBOHaba3yHki2C9+uJkLtJrygmisP1m
	 vdCQ+C1VHTe2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17DCC77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 17:59:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168356874585.8951.13035722735587089129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6790b730893f352a8eeeb8d7fa1232229f0c3493682b68064299f4422cda232
Date: Mon, 08 May 2023 17:59:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683568745
