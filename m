Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66E8C1C299
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrbBJ1Ku"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC589C433C8
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697049428;
	bh=Au0g4wyiSn5Es+kvgx5gYpbb38QguxGz3K1e+uwXaQ4=;
	h=To:Subject:From:Date:From;
	b=lrbBJ1Ku8E9NFwcDwOxkM+/OwT85sgW1BdcGzU5+HwZcCXhEgw9GaL2jL4SY4zFAE
	 dDZYe7JO8HtNoVi55OkPczOJix10F8q9XKFgFa/j1GIgKzzm2qEEly1AM3ElITUE/d
	 y5BqEP9P6enI1KGo2bGBYKopsfGSrYGvso0+3KZHxXQkNyvj0GCZLU7CpcG9ANv82N
	 cUtOooKyb/bdk7j8Zr6j5fB93WyuzQzuRnILu7EEkFVhLTLs9YAa3IAvdeFm+VXRgh
	 I5X7Eu+ShghVFDQR1dfE2DnxLkYnmE8M4queAESqFYA/2xtzC0CNCjlgdmOK28/usn
	 7X/v+H9fnGNaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE973CDB475
	for <ddprobe@lists.linux.dev>; Wed, 11 Oct 2023 18:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169704942870.31713.12035351087054415054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab533ece1f450318bd81273f265ac93e91a89061bc9bf76ce9c455c99cb294fb
Date: Wed, 11 Oct 2023 18:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697049428
