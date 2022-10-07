Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9FB7E5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71EEEC433C1
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665103853;
	bh=yOFdz5sZrDu9hhoLUAm+mzaFTfhNUvSqrieQMVoK17A=;
	h=To:Subject:From:Date:From;
	b=dl8k3K84Sp/na3ipu4MhnsUvUzcntIftiDSwKwjBQNvzAAPfuNHGCn/sQeHQx/7Ld
	 f6GJ1WhaJCJt24ngyASTkqAFKZQ5J0oOV7OyktBHiMhUE3X33PQq8EKCyHOXVXlRtu
	 4Lk+xNWKqJGj8dwPrgyl0EX3mvHhjpRRTBHevRemYFzl/gcnY3P03G6TqQHatolIdn
	 LKjHsfpsPrKJON+Co+VXmWJ0DxG8I/tuldXUYmgHlNrRtZIEAPpsIKboYTJhnncANF
	 HU1/vsH9jUmKG1K2U0qRH+OnYU1f0ITtj1iYwT2lpuy3D6mCdHk3No/h5+bH1WGeFN
	 ZSILf65ojKYWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54054C433FE
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 00:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166510385333.22446.7045238369529215677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8380393534a2b77ee7980340095af80e707858dbda27299dc868c5adea9b8357
Date: Fri, 07 Oct 2022 00:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665103853
