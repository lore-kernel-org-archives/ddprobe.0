Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9A39EBD
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82510C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665141653;
	bh=20EJ3MNIRYRFm/TDr65dW/nAHxeMVYiSxzz5XxwxpYc=;
	h=To:Subject:From:Date:From;
	b=csnLTGmeiYRvUr8F14IVQVD1sEpXlCh7tVGGBbA4+r5E+nsVSiW+jXMU8nTLreUHA
	 YnkVFEO6ZK+hXtflgQknEnXNRFpONrro2yzdCnj3m01RUCmfvPJr1dng4tU3bQq/LN
	 87m365rpiqs50g/PL5JS+pS9hM/+25Esitm0jyxmsj9B1KU97HIHrLhU91tcdORpdU
	 3P9AbBpgI/OgGxf8FIOrUn9sQzKC7R4qxF+xHI9pfuRPdTPx5sx+AkBuxpYOILCFGA
	 /7Pxr6JBDt1ZHW6jXAxwHRgzhbxqkXLbj92PaVXV7ndgsvyR6nk6NUutkEs21mlAM2
	 PSOFQYZNH/MHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65138C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 11:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166514165340.3590.1755671811357802378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2463cffc55c24ff27b6476264c24872061b35f0aaa19612902b84d641e447b45
Date: Fri, 07 Oct 2022 11:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665141653
