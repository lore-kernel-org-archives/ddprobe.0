Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E476D24
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B615DC433D2
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670612487;
	bh=MT80M9+pCxsi8fTqhIBJ2RHximWGW2yrclJLdjCjQ3c=;
	h=To:Subject:From:Date:From;
	b=CajV86zyPcN2tnJlHB9Z5Ng66yKn9zmidV2qJIJ8O5VHAfjcRZF2JWbyX561aGeNu
	 wikuoEfYWuJ4TAruJhD8bKYI1Etcdzpi8s3uB4y5FKO4iGOHkv7P9ZclJEvTfGjemc
	 KEjvIIMT3cZF7qnxQrW8o+7dy4XtIGvWKAZdLK88NkR0sojKiatdN2+LBBGXIdHdFD
	 HrzOu7l/IGUPi+J+9Gqg4cSyta5+mwsO6afJ000QuiwSGuaDx3f+Ha6mkh8ltWPE+f
	 ope4plvZ82dK1R7UgfJeqK3DP99ThPT9adspy7e1KbWPYVSkEuGsqajBEUBa6SqpTV
	 ZQKglJ2VqH+fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D44C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 19:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167061248758.9093.10860593941604311933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d50d98cc64597f2784d91912f4bf6069e73ac6456a1f6344e4261cf0ade08522
Date: Fri, 09 Dec 2022 19:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670612487
