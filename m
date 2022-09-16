Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3B6D2C9D
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FCC2C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663333253;
	bh=kuzOnJRmgMlR+8NLb4BlYcJxgnnPQiuq2lt5WVycHs0=;
	h=To:Subject:From:Date:From;
	b=gJXz4Ut/4PG24xfsxx3LDlOLBeHKSFZYGufZL7JbwqlGlTyiPIe+w1TIciTbJsQYZ
	 HCI1vVj2W2XG56IlVq+ouz6yo1rVhoZmEJ4tn3zbqUUtXFJ5eEgUDDN96Vix//huYJ
	 4LP6ZYjPLB2B/w2DMXku3G/1zWTfTXVricfEgNeoq6sZ5bOJl5wN/H7YNlQTnytpk/
	 1gWLEJYTgkvjO3XFRz9i77evITX/szdTdAxehZR0/vgz2wWKxYE/5BAD0h3Sx59weL
	 7cni+a5AnZTjsUhH8g/dAWBovp6ZFBon27t/Tjpj9vbmCiwH+b+CsKp2fzOnTpK6HV
	 kBG3jcbLFktJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5793AECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166333325334.23248.12530482025715063968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885239d2d6d0490c76439608782dd00441f3a92569ea7e95aab9d2ba14a31fe9
Date: Fri, 16 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663333253
