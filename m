Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FFE23CE
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 720B7C433C1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667223654;
	bh=CV41Zh4kY9L74Ktv6ypovuV1KxLUlUz8aJUZEExV8sE=;
	h=To:Subject:From:Date:From;
	b=qRFBA5hdpbojLJgY8McHWInCvPU2nIo8gbonySydG1ZVH8aNpAoYpfDhodlxhRXTx
	 t6ciy1aH/3mbYJhjIWI33qtZcosbV1z3Jx2TsPXNfBeZ2HvseF62m2QV/WPyqrQGYX
	 ZBYVjkh+07RfS5AxJ33DadcSIs24jZ7XW/H8jf5u+6o2TjI+zvaJj4irK6VqGmhn9A
	 C89mIe2a+9Pk2dIl+XJf072c3iJrK9mtjuGJbxe1POvnRS6tkNOt4Uc7FtVthKVl8J
	 Mw2T/HUlQFO8HUTam6us5DFM8ie68qtn5xCiAl1pououK/UsnIkSlFfjFNE+0Znmp3
	 MURLN0HnnMQlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F41ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 31 Oct 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166722365435.2284.4997830781344625684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e848ffdc1ee2aec35d11fd9f212b92f3c79803e92545f4d3e3c5959a6e69ca5
Date: Mon, 31 Oct 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667223654
