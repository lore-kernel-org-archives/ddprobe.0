Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F6E28F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70A55C433D6
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661761252;
	bh=JVHXxcwwHWX/1Ejx13hUzzAmkl8XvoUuQx9efjvxcsM=;
	h=To:Subject:From:Date:From;
	b=eVLDvfVbAwO9NFhsv5OiyzEfzbdZhW7oNYbnTt8J38upFUWAn/aonk5yDV67C8S4A
	 DE0FZFc7TTCGn3tyUwRNK0hOVlo/E73qoWknRIidtbUZ9FGKoCyfcWhWGKcAxIdVok
	 izTBl9cDak6j2i/KnAo1MIIN5fDuVvht96FXv44uk8leqfvbRdm1XbLp2ANJXcRfwd
	 J39kCAiuwbv6vjxwAhKFwJTMbY3zDaM2wFKfhXncbB4AdwwVq7C+ig/xMWZo5J7dfk
	 jyBNuo2XwZN10+gonZ9xOk+7xx9Bj+HwmimLKeTIQdbHRlsg+L690tOubrGfkmkovd
	 OCbyo4YvL0Jzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5724FECAAD4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 08:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166176125234.9366.3384890007261334887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992504c0a38b8d7960643e5233e6952bde2064c2ad25d840987b47c70fe22d8e
Date: Mon, 29 Aug 2022 08:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661761252
