Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F5017C3
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 07:36:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C911DC433C8
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 07:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696232168;
	bh=R6Bw/VMX7iGDbp1045hvnrCq48uPeApLnDlYJuUgD9o=;
	h=To:Subject:From:Date:From;
	b=MNJbj4r7TDJirnr0RW7zyokcfqJ9oNgNIul58MK3SddZANeEUxLdipH9xBHWbizT2
	 6SGvYRYnofGAnu184vuPiW+JvRxAV/NAnl8uUsGA+sdqsEo6cF1/iakEbFx/iRtILQ
	 Ghs/DH0UHsp+W4HXMcseg2T2W8u2cvauXBdCS/gjDRzpdAQfwT9YSTuvGFXs+CT7DI
	 Hh1s0wEx7ysI/FTAq5ScZGSZ8TzqSuvfG1KNlPTsVgqgh7k//zavWZi6PIwnBfAS0J
	 yQW1TNYwBVW08X6aaPTuYBNLDgiSgf4QA5AmcZLRK9JVdkYbjA5Bt2yXnQIJ6icHX3
	 P2pn0xWjUYpbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A14E784A4
	for <ddprobe@lists.linux.dev>; Mon,  2 Oct 2023 07:36:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169623216868.2695.6711909090261500743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af00dcd7e5a61822d8315e9281d2306c0f19223c7d8f06b3bdee684c0363d02
Date: Mon, 02 Oct 2023 07:36:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696232168
