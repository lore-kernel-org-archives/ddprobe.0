Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A9D36B00
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4Y9OdWr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3DF9C433C7
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697637492;
	bh=FjQjDtx5oVbbM1NIaZE+gaOz0U/NdRGTbEbG87GM3Sw=;
	h=To:Subject:From:Date:From;
	b=f4Y9OdWrUX6qCjqyZkywiOH6bBJctTqvbtRZwmNu+yKRugNU5TX/QAyLgPm1qwVV6
	 WnI/wHImhC9ZN4XsXbY9lqlQXEYtddCLo6h7G7ZpVVbW/eK2NkhHTXgJOd/a9u/+2Q
	 UjP/sfWtI5bZLI2xiYXAS50UfecGaiafdabW6EEaJPgg+5p9DLxkqcvyAcQ+W4PM56
	 ybv/XAKwllJTXas0vNCb7Mt51AT5AS7dfe+VZ/w3c08FO1dBRt+uOoSn376tX2RSRu
	 pSNfOLbDPWqAU80JS0miFtFAGmgxKHkbWfWh9nDe3j7ki3xr1G9LUYK9HU7S2J56qB
	 3eJiMH/U/oVwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9849CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 13:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169763749281.13887.5696684730180849201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08ad516d007f3c43cdfc481fcf033e53bb0e2a5c8fbd4b9a613c525e0ce9090
Date: Wed, 18 Oct 2023 13:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697637492
