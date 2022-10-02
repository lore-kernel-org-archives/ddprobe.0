Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC6015A4
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B30FC433D6
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664699453;
	bh=7pS/vp0d7VFdpB1rVR5v6q58eHAJeZSb7gaqdapH0/Q=;
	h=To:Subject:From:Date:From;
	b=FzfyIMERAUr777SYnW91T5r2bqg/uAS6evdAvHLYmX9YzWgz7BGy3g3OvGjd8MAJd
	 LajueNd5y+i/FmO7m1qLvyang719o4dSbHirYZ6boLMLGgfsNhd0ao3srHG55JYE/v
	 J+DD0XOiilCUulNnFVKjpfvkhMbaDHQoEoWewszBCI7z5/aKcwxzXR9Do31B3GgWjw
	 D4TmlSm44Uh1TDzCrHaGptyJ+/iOFwpytxYOa+iyPK+BD04HQaH+LRaF2Ki1nZGgg3
	 c8BzsJ4+cUB71G+y9n1xOuDzDd+f8DHcuwsICQzmIKWY55X1uBOVujVIg9rGgkjLYj
	 zEMBMBmCKblBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F211C433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166469945331.13305.9105409806068494295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f5ba24cd07815d9a040c37a4c2811edecd879119e476517c9c20778b4efa77
Date: Sun, 02 Oct 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664699453
