Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A17568A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD638C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672688487;
	bh=kLXx6REc4uDTvz2S+cNY6C3xKIcQMkE1Ene8Lh5+2c8=;
	h=To:Subject:From:Date:From;
	b=Rn8wfpsHRFnQECssv/sxl5Xw8trHXDT/jzQ9w8O008TnoJk5hgj6TqBFRAkIbS6Xx
	 p8WJS6L3M7xihBSvFZERMR64QxUWcQu0CAe0Ct12QJOW/DzoN+2LKy5kJH0OZX8NMp
	 4rn7Wf3blknllSxDMnTU4CTh8/hNfDgECZcWMH+lXYEcAwAkesbLp1BgTu3CR0Wj50
	 VWEXDSu2ZCvwZZaGZSoBjpqiKCe4y6ZJY0IVr7WY9Vlc1wnLtESDIqRdK5mbUaBLAM
	 L/hf4gFN0Qm4hF9+YP12lJzhJBH1n96oTMK+OYe6C+3L+7KXUMba9GnSBxQDico+uE
	 KUXdeBzzkn4xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88444C3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 19:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167268848741.28529.17272104992014460057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07c9d8a27dca5b116057aff69af9ea76e8689c5095333fad1e1c2471211480c9
Date: Mon, 02 Jan 2023 19:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672688487
