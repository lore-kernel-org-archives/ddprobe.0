Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEF9420F8
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B565C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665757253;
	bh=CnbNBZget35WClTeP0udEGZ5izzsgczlgdixRwZgKtA=;
	h=To:Subject:From:Date:From;
	b=NlTqmxe8SoTc1uNl989tp6JzNnIoi9c8YzaaoR+WQKlYpm7vgooHhbFHqLuYf9oBa
	 e6Imdz4MY0vBzPoXuUbXcfFJlyV8FrhUBbQM4xhv/ZzP7rgb4KrlSYiZwUTuMd10cd
	 xIgyd/ATXOqgaZEP87CGtup5JwcjLNHfQjIYZQbzPDncr8OlBCYrTY6cR6WWDFlDqk
	 YFcjBaiRIx7OTBCciR3jJinxJC61PLdX0pXta7fak8ba3VdvxvHoEBWim7fMs0BUOa
	 /iae7Zeimx3tVGfeIWjo4vCIG5rhgI4OQd2CHJTS68SYoJffuwlnRVc187RaSTM/m7
	 5YbRw7jfRXeRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5137BC433FE
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575725332.28504.17440673717933288870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d90866c05d369a35bbf62b01c09ca594c20b7f4bc0b4dee5f0d38dcbadc5d29
Date: Fri, 14 Oct 2022 14:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665757253
