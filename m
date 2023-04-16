Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52AAFEA4
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9E47C433EF
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681611905;
	bh=zfvNlu1pdfDFpAXHa6DAI/8WxR+ucvitf2I/EDYBm2I=;
	h=To:Subject:From:Date:From;
	b=sVDkpHi81V7Tcl3TahYN3OBdXBzZJZHGPzxZvNiS0jxzqTGl0sOLoLvZ59Tjcy4Gw
	 chSLdDTYd+WpSX1J4CDyRT2icBg4XeSgya2v8gjn+1QwNZQyQGIVU9lWFj11q5aLYG
	 GhHOQB1qNGptt6eZKLe/2ImBA8ZDgFoCcwXHAKYbVQIkFcbn/8u35kvTUKzP7TZqoW
	 4SZSWpbokyIz0C78Q+MD1ffkc7Ez436xGPSjUTu+j6kmcdF2UoBRiJTocQc5yLSPQr
	 PSHbzgduF9CNi2ewSvRIkSGS3Hu1GVpiPD3DyVX7a8bxsiT7mHjMs7w2zsUVgDpGvd
	 YUbSy5PvycZmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB79BC77B70
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 02:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168161190578.11264.5731850734080797349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63c57e2cfb89bce9ae9f23b8bbc5ce0c4a3a0bba975b61b946974c7a37cb726c
Date: Sun, 16 Apr 2023 02:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681611905
