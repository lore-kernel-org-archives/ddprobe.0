Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84F6F110A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 26C6CC433D2
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680938466;
	bh=L8lOS5UXPqhNhFWupE1481WPV4aNIn+TDYH1W90vT3A=;
	h=To:Subject:From:Date:From;
	b=ktHb0xtEyeb7rWcRQYyvq0ppmCvCqgy7farNmTqfzcyFxuiTKVYJOzQRWLjHX5JoM
	 nt2blz9l6SkBw208VQw9YlgDXG5RrLzll9AzPrP0ggJ1UMXhlF/5fgyQiVdGUNvke6
	 KwM+8ozRGtDuXrFrtAgbIefW2pcaW5K1kkqq7W7XFGxrWl1D1JE69WWhWc6782nE2z
	 5o9SMS9gp7CaIDKGIL1XzkracCp4aC5T7/0y+cyv0eW+eiICaRXgjAR615dUcRINtK
	 keqvktElqKgk4rd4OckjTw5PAt44DoPGnqSF77R/mAxDXOuEGBqoQqcJw+21QWufgN
	 I3rPKNCW0vXQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EF42BC7619A
	for <ddprobe@lists.linux.dev>; Sat,  8 Apr 2023 07:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168093846587.24335.9595167436526417158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a14d2d4e950a8fc065fa559ceac1761ba59b1801a37e8afc6bc8e7b2cf2a15
Date: Sat, 08 Apr 2023 07:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680938465
