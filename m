Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B38E23D3B4
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUbcsj6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E37C433C7
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702658296;
	bh=ph8Eau8mJRlmMkV2uJxo5l6e39F/kZt3ac0EB1GOy4Q=;
	h=To:Subject:From:Date:From;
	b=dUbcsj6ceY7u3AUrukn7kalIGhZeJHHDOEMuQ78RALzl2PJqbn/rY9T+H1CEeu2m4
	 7TVkpI+fMknrj4abVJ8zyJbTXlELLBYNWRandSChiA3IJYQnvhA08LpmLvSxUTFca9
	 mEO0GFrKLa+O7WgzbTbIXilALyKbRT8Cce7DIf4G5oFZDjW9sVrvEYA5Q4+CvHDb9E
	 UyqA3wrRzBpoiMPf+Hw2CGchGNz9AfrjRbBAxN97Uj69KDIzP6v+cYfICUgX3t5FSY
	 F5lJuHuh604WFGUGWn8EjrL2s9La2TZdF2knzZzHKwhpmzcz5Ga/mknZYKRmKLmRWQ
	 W7i4RP1hC//ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A951C4332F
	for <ddprobe@lists.linux.dev>; Fri, 15 Dec 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170265829642.9366.14154906733182519622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2737507fd514f5e65193e25caa5a104b6c7a0e4dd937755e047bc912280e2c58
Date: Fri, 15 Dec 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702658296
