Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6215CBA32
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:35:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 10214C433D2
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677274506;
	bh=Qep63GQT3yJ27591YIc1HeXe0NOIEiZXQtHNvo1k5iA=;
	h=To:Subject:From:Date:From;
	b=KhLGPYZfBlaOq2wbvB/fr7YyFzUz4UPFnr97ttoTZVqnIbeN53OWkWjEhoV29Omz8
	 O3r8aWuD75tQq9AvF6p5KAJT4OZ8CTXefXS3RhHwMA/qILfjDd+e6GTUQNUE72OFVo
	 CqPq3KLFjd8pDvHgOcbNixQtucdbRflVKJBsANOpFW1GerlGyVaEel3dSifzIN5gKC
	 iuQs7geQeX+RGxJ+fuUvsoFgMLcCy/ITkL1/w0m8xTF7TK7b+lELjkuZnQMdS+M0sj
	 m5NicRHhjTxn73fIM4BXHYBkcI8voMKh1WPcOlYB4AY/JWGcfp9yL7xhvYOvCTHPDD
	 9pZ98LzuMSWTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E550DC6FA8E
	for <ddprobe@lists.linux.dev>; Fri, 24 Feb 2023 21:35:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167727450592.28990.17817952598383531744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a5485ac0f06cfc0f2877dc110d44b3171cd07da2b45dbd7b3b9ebf03961d18
Date: Fri, 24 Feb 2023 21:35:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677274505
