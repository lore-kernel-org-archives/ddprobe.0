Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 876551DDF8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1607EC433D2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686585846;
	bh=oGYkCTQFe86gKToDgHEZiaRyIUVZ+aB92gOo1ndZhCY=;
	h=To:Subject:From:Date:From;
	b=G2zNCWDDvCGrOm56GlzGQIFhR5BZ/AaDdY+1cc5LRNUxlJErBdOb6meZcmcdrv2oJ
	 Zo0Mnci0+ZZKYwPlhwo3WeT/HGp+pwZoiRQp/2J3CUxaQwxJLdU5Ymp/IWw8p9UZD7
	 RLskbScHouPtUBzl4ISCm1KkyN+bjFodrZelM2BNHVUPGjTa7nVXBkImz4sNJubFe3
	 qAE76ZSh6ObVQ3xWf3LpevuFZgwPRnuKhMdqu+Oh0KfCAyCT/x0AIm3A3HJuCL/8jq
	 XWAYSea+NmSfGIZ4j7dZTrXzJFjDqiX6+AexowEbxHzgZDaUcGIfNIjE/IO4jRlfwc
	 CxiPvsXzZb2rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E56DCC88CB2
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 16:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168658584590.22506.8206751073817997410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6722b09ab344f14d873520910441fea414c9d118a0a8050801b9bba6a89ad922
Date: Mon, 12 Jun 2023 16:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686585845
