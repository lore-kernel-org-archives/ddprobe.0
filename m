Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C8BA36AF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 18:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC91DC433C8
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 18:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696358168;
	bh=WaKjg3nX25GTRKuLpZK1fe3l74a+qENf/J7eZ9vGTQ4=;
	h=To:Subject:From:Date:From;
	b=SRjT0DBe+9u8Lz9/w128qCcWQ1z0pojtxuMW8YsQe0yyaprvsSTOEQA1XVfN7/Tf1
	 2Ylpp9k38+1w9T/+OEjv4jrLyQCfcfMznjolVOEBR4El3sFsyGL2ryti9PZ9lnwtSZ
	 49g4XBUmix5PWe0faZoFsSfHmYsM6AK9jgQKjroPMk4GFdvdH06G5TuNA5Tmj++Rhv
	 ZH0O7RKHs+w1YGsqLTIN8/vmBH/ex/Uhch5/nSJpfGcrtUn0t0ilsE84ncMm1MtJlS
	 M5RWKkPaY283iqgfgGk1IjxyMJVwmtsmYIKh6Ii5smJssdDr5YN5PJtRQax8o928hD
	 ULFgDmMx3wK7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7950E7545E
	for <ddprobe@lists.linux.dev>; Tue,  3 Oct 2023 18:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169635816867.2256.3102148080688119683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332b12e77e2bf4809815653fb56d066627fd68683333eae5036e6c47e9038c65
Date: Tue, 03 Oct 2023 18:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696358168
