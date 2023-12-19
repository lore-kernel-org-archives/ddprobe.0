Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EA521804F
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj9QAacb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78997C433C8
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702969096;
	bh=EAi/wjUws4CtodJUkzL5TFaqIBHp55FKsNS+CSisSxg=;
	h=To:Subject:From:Date:From;
	b=sj9QAacbvkptPuzCHx7lqobB0HD22Zs3VcboiY21eH+BVgq5npa73R6wYeyvoACpD
	 kE5/rRdC87boK6+HbnAbHzC4SbxCTYZWivlMwdLJuIVG7QsZeuak2p7I49/MAMWXCB
	 0A9pLhMzseG7ExWua+51I1k6MDngDHNvNVzSnDhJrKrzsxWV8Ca/2e+e/NkliT62dK
	 qzCZtwigPk9dtI0UBKsHH7u4ZJgFByDzEEHES8KZo3kOgKqpxgky1BjAXANYvz97X7
	 vyBsNUBqSxxd0fHZyEZt9ZXhBPqQKFgk0FFo/eohnUCKPrzhifcpX2VMr4O3+9vWXz
	 Sotcpehle6+Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60C3DC41535
	for <ddprobe@lists.linux.dev>; Tue, 19 Dec 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170296909638.5139.17914389946257547733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c54d90061b05f25854341bb577e3610194732d6d5923cbb07dfb98007b0052
Date: Tue, 19 Dec 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702969096
