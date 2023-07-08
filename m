Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64FBF1851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:47:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40D6C433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688838428;
	bh=KffcLUiQzIYdBWFhYoVLGiCJ9poSBq/i6CidHHxfoo0=;
	h=To:Subject:From:Date:From;
	b=Ih0f4R9z90/OSAkz+nDI+zce80bmgfqm0z0A2WU0AO2AT7HeAyA5PwWwzC366eQcC
	 JwBwFSEqNpHMgBeWWuwk8I5QDni9qyg/FhnJxclgWpE3J161BV+kXGatpOII+/o1d8
	 sOFpoJRk+TtBTrlK785AxTvfLcXaD88WjztYW/wTwyybmVhOygeMSa9m7KPg9oyyT3
	 NK0OalXCELUyNNM021gQRz1ZEbqhGGVc0wq+vwVETjO1vMJUYI4846dXb9HpmgyUww
	 PECj7W5MvGZvY+iboLqbei9NuJ5UpnMxU9vPPoIwjNgtdoG4HwVMywHUz9GQ8g5j6J
	 fQJurpCuRNqrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B146AEB64DC
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 17:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883842871.2839.8911664985942074456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b271d2fbe024fcc8748efedebb247ba0837292a578b4ed85125c07028609399
Date: Sat, 08 Jul 2023 17:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688838428
