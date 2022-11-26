Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10BE23A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E52FC433C1
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669485654;
	bh=zm+uvhm/EMLiIR2HOHZqQAktN1r1Abt71kiVMgGUTQk=;
	h=To:Subject:From:Date:From;
	b=Twl0peaP64hwksHbzXsp9BW+5h9RgoxzL0xZIDarQD2X/yEsD6Yai5K4IbzcGpEK/
	 C5VVkji0bNfc0FGvwlddl0BQrG1bRvJBJa+1EdbIiIRrikIzXuOUUkJAzzwQXnuT9W
	 ntym0pfg3Ym/SmS+rNOSzuLqOxLLmRkTKrDv+5FBYboDvCzB4jU0GH0nLeyy9PqCXv
	 p0fktigHh5mLBNUi2WmI5dIj7zpvt3EV5UH5pChMOYb3ND83Sk86rg7M1Pi+XNTssP
	 0NamMCPhJv5ZSMtCIsiYNnHUANCpDzwqJt8Dax5bEn7OoA1Uu04zJ6mmAzapwr0lMA
	 o3+M6NUaqp3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 538F2C4332F
	for <ddprobe@lists.linux.dev>; Sat, 26 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166948565433.16007.2742531907176778790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7996c101ebd8bfc98b3a166aa04a630d6c650899a5230a9d53b2de1644cb713
Date: Sat, 26 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669485654
