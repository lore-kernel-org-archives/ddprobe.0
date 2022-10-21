Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE8C7B
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78948C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666384853;
	bh=wFZKLkOcU/kbSfN5K7eaWGAltB2lqfSrNAQawtwyVdY=;
	h=To:Subject:From:Date:From;
	b=BVPRYzqKiWXUOYku2iOSN8obNtOeQ26XSpMa1Ky6g+VAYiCo+LRsLdCy0lJeRv/uM
	 I1/3MknxdLT1t9NGQ1FnEQj8yQqsQbSF+m9Xt7TiXCmx+OyZuXns5BmY2JsdhuqFgx
	 UDmjjmD7IspScRqmXy1HlOQLoqmTpibOfF0PR0l6YhjL6TMSkHglvfmy02SlPwBN0s
	 ddrheHevuuXuD12cczx7l5bUsAjtldyPvkp2fUykuQSPfBM2+tsJxE21WKXZNHhpdq
	 wymukEv84nlM+9OzS8JcT+DGSnVnmRNh2psvzll7m2deFqk5xCvkCx4s/MOWHoZFjE
	 4grOkDxQpC5GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FAD4C38A2D
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 20:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166638485334.19245.9512582578078430001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b204e91e7b6a1fecbdff7551cdb4c245a6235aead30945e2d12699399723679
Date: Fri, 21 Oct 2022 20:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666384853
