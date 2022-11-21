Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FEB3D74
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C202C433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669035054;
	bh=dTgATuS/SGCBd+UQq+wT83BB1GiPleWxIM7SwpmtGgA=;
	h=To:Subject:From:Date:From;
	b=CsX2WciycMeJ6p8q+Zxr6QjtQXxwYXo7PRWkMPtMUrJpinZ3o9LW70lI6ZSEW90lK
	 VdC/QJpIAx8PQ6K9QhjTeDmxIbqskJFzFoN194LThZYFrrr4fProGN1GZJNv7TG9KB
	 GDn5sF/hkib7gv/621vNadIco5lJIg0UAUCNbKDIyW8WG6mXvEV593W+6y+2uRZANZ
	 D0ih0KrYHtEyPRcSmpgl1Zp24QlyV9wVwj5lQ6r61iZIDhx/5V7yDxjxTEmj4OjqKY
	 CzQDc3oQ4hZqwdvRF6pGZfI9CBrcJQf43mE+SMBn2kb5MfY8f42mL7HKCO/06hCZw/
	 IXyRHQLYX6UOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D3EC4332F
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166903505432.22818.2702774658709604185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8c7f75fedde7c5a01dba0ce2ac44e4e46ff77edb205c70c52fbdfe3d9383f7
Date: Mon, 21 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669035054
