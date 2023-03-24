Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8012F2D
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8645C433EF
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679647265;
	bh=pWi9jpBYZSPZuAQJ9eBOVigPd5utZnAtOiDQ04USNVQ=;
	h=To:Subject:From:Date:From;
	b=XUUj/P0l6LrhpMnouJ2THaJDugTpEgCcD7/rU7G3izwvNf8bmqW9NFzBiPw5ynZoR
	 HhZOf5LGYoKHxknb8ugs8ATxxNFCRkXVz206q5KuWsCf03Gqmfu5Aq/NTP/VZVeFyp
	 H/vwuqIClQV80J+irlDVhgB7oAaQ0eTNjfxYwpIKQPhtnyWGgXduKOZzkpVaFPenqh
	 rpz4tFwEvv7Noew/iKIUP6bXVlQYh1taJoaFrjU4j6lKpRJkM452UINAvQOLbo4V3Y
	 Mbe/6E99M+GUjboDOrNohe1fbtDR1aO6+zYD6o20pRb2hDSuzewkpOK9v8nSjlmkI+
	 RjFhCMefAgQjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD6C0C6FD1C
	for <ddprobe@lists.linux.dev>; Fri, 24 Mar 2023 08:41:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167964726582.20516.16785574720375504275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9f4b3a4704ec0bb1fa620109a4d63af12ad9d7989af5eb6a0b35ed143a48178
Date: Fri, 24 Mar 2023 08:41:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679647265
