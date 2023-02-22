Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DAB1FB5
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:01:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8CD1C433D2
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677049265;
	bh=JY+087iQkRFDdOm0ZnNi/AQvYdVuhwFAQfzD+cs9SEk=;
	h=To:Subject:From:Date:From;
	b=QqFukCSe09OillFi8lO8lNFmn0X+e36k8s+TqhwPi48jSbkbZ4elBI2hUu9B3fXoL
	 TIseya7ZCWK3un4KXzMrPPYa7SVQLhS328CzrnppyLH0ujrhjuTdJ6lMiTyGvpnUP7
	 BxN6grJVk5RcqvU/XrkTZiHc/Kaj/EoEKZk7V1ZQlVA6liPFCWnJ5iwD8bUGRlOvum
	 6Qiny+BTYAaszg1CFxC05CMSbG+W7fkeNy7DcnosVAb6T6mv7WKsbEFiOjkKztqdnM
	 AwZgiTkwQ7p9ZEBmSKKHTB7FVa9diHgWytyoSLRy68fe5l8OHa3FKM+rPSCNZ4izL5
	 fzZ01+Kr36ADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61F9C64EC4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 07:01:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167704926580.15152.7063334148052608664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55dbccf99dcc9a67b81163c288abd9b663f3bb83fcabc114cad1fa0f4027c45c
Date: Wed, 22 Feb 2023 07:01:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677049265
