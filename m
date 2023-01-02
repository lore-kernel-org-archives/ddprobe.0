Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1924430
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EAC0C433D2
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672672287;
	bh=JxouVPsyN90RRrW9Kb3C2nuBpi2vFnJLFOpwWbHqtzc=;
	h=To:Subject:From:Date:From;
	b=HxL+yqkE8hVNVoLwqdnSD4ODZt3a8WCr53gluIF7VFWuHoh53eEJo48KNZJKSlGRf
	 S8mYVUSU2jAbwXsEtnf1zFH726xMXbnQRuRRx+TKOZFr01Lef0M4QQ5KjpX3/I6D0p
	 MNGzA7Oaw2MontE+eUSBhTk7QRhJu3M8CnVgR/aAlruzvJfannNDJmic/kJg7yb76z
	 RnYabx38pEE/YWguA0j/IHaRQERG8/10B9BtCowuPJ8d0vtiCJ7O58RzhdlsiItM7E
	 6yLaHKTin5OicOWRqBLS4Cl8cP8jSVjJbpE66P/1G2wxCjZYqUbjSSEBig7dDF7OTv
	 p2ONwji9bvcxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62C92C4708E
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 15:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167267228739.17666.12005502447197906407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8d0cdb4c56508126fd2ddc129a17752ceecd1da6355a24839aabff40587513b
Date: Mon, 02 Jan 2023 15:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672672287
