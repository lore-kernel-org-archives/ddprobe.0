Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EECAE17DB
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A226C433D2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673370687;
	bh=Q1nxNRSSQVoWZnxKabT6sacPlLUSxVxNfmU8zoM8Aok=;
	h=To:Subject:From:Date:From;
	b=FZkNpXUA1sul52kps/OWb/RX9IeBWxLVn3JhiS3N8QBllVnEPlA413Qk66WdhpgbJ
	 XaOlE3P1Pxw0laK0YAlzgiFZzsVEddbfZDSo7rIwlQW0rx9qWl30bR0Bb1k5UgIGc8
	 gJoPhSGHMcweZ9J4U8U5byV649fkOoL4ixlAbdvnRftUqY0ehlL8R7umgQNAxvuuT6
	 kHXBfJC+J5+qoQQYdMcUv1rVEnUkUomh9+Awr7mvpCy/ArERIk74Sr+O+WCMwGZx9z
	 st7K6IDz/fsqdce4agmE0HYlaehuVf1DN6DyjcMwxpOC2m/3o5ASug10dbBhZdtuWU
	 hmj8UtE4YqKbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A69CC54EBC
	for <ddprobe@lists.linux.dev>; Tue, 10 Jan 2023 17:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167337068748.7660.10959316873398719731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3438f55d41bcde75434f857a39d769275d7db46d40691a7520c296d4625a7291
Date: Tue, 10 Jan 2023 17:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673370687
