Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD0C41376
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78EFAC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666838454;
	bh=8xalOfhtL2clCkQBrn2nGiBg8cNS2i3Y+fsdA5U7i+4=;
	h=To:Subject:From:Date:From;
	b=JmRyNhb5sNmqYa85UHqTiY1189JJGflpsDtfd1oHp1MYlRVBdvZzAgPDWmXuWfw80
	 jenn5kj9O3clbB8tMtYfSZ+JFUjVYwmAw9sSZY0gm9EtXh8a6pqoofsU2euxDQ3rKm
	 ox8TfoCyjiASph0OCTo2hUSzvXBIFNMFD7zaW/xx9xev8wqrlObMz7BBU6DSgfnHw+
	 91vdsPrO6SlWHkIZ6Tj6VpH8kNbauEvhW2X5l7q5cvl8tDfvI4VH2tR7vieoyywF20
	 FKpCbAxV8w+pGBXFA1mCB6MiUQ3Yk3XtGXegdBqpHplEq83QZh1otXjaj22aMy+zMK
	 C5afEE1vnH3qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F9DFA3741
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166683845434.8533.4983775580258483211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a246fc4f99b74a7094bf55a5ce7a9ca446d5fb9a5d065edeb4ca233879aa9996
Date: Thu, 27 Oct 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666838454
