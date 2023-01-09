Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0AEC3C0B
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81F22C433F0
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673283087;
	bh=19MTv7/hdJVqXKRiwRN/SnVy4E44gU8SS6uLBgc7gYI=;
	h=To:Subject:From:Date:From;
	b=t5uu8KEuFMnajgEZxgpM8LM/bDaZkuXDY3ULK3cx2br+xIq45G9FwSNd0T9qsWdyv
	 B44QkRJBKbeGI1QZyiqbtA1BnDlVrYOgJA50vqes2qSXGbTRgbXEkIVpX8j470lLHC
	 JYObeomvhpuuHdtYOHzd3HFcAnQ1+JJrpbEsLc6sknkJMlIuVN93y09zQoafoDo9OC
	 xQ2ydkJz/LFqtYFdRZsmkIZ0iOAtvYEJjsa9ghfwjWuiLszjMr309o0/U1oX3NuNu9
	 jY5PtGAQrhZ0bE1SEoXoGx2tQEc3my8aT+m/EKMp8G59wz/QL3wPoilVph97Dw4qfi
	 4wMbYWGVrbzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CF7C54EBD
	for <ddprobe@lists.linux.dev>; Mon,  9 Jan 2023 16:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167328308740.27507.14377804492129892151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1290a8d28a87d6b083fb5c473292581550e3fd7041ca591144031c5d81fa614a
Date: Mon, 09 Jan 2023 16:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673283087
