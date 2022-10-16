Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD3E02568
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84D5BC433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665953453;
	bh=WgLSMwLDZrqerjSQWyGKSO4DZ30CQsR2jJl+SZhEl0g=;
	h=To:Subject:From:Date:From;
	b=j6RCs7jpL/Vq/HJCCojFgCEhwqrfgjxl6od273TyHRDVmGj3xHSX1YTbfwFg+T1r/
	 KqxBAUoyEw7aoYCNOaVpcmqc2MoFj+HEEyl4aSXRyA/t1bmI0C0plSBLQDw3Fzskny
	 TaEW0HzTWvlOIyYyuYFDRJJ7ut+M1zbZbgKYfkk3EvV+JFT3jHCC5uHYwy2JKNgn37
	 gF8sszPXm3gRh+wfGu6tYUQQ9Tko7zje8UQdwYQFF7C0GoOyPHs3TyqdoH1MfQvby9
	 35p6V0wbVZs7QzKc5UatfE2zewb8Tv2392R28bTv4yJOQ12Zv0ezXyr2BvBDLydAwg
	 tN5PO0LCfSSmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540A0C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 20:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166595345333.19902.4564361886531601636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4b704e9987ce9a8d5e31f05a4c86569c9937b127034d3b40e7c313a5bae6e5c
Date: Sun, 16 Oct 2022 20:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665953453
