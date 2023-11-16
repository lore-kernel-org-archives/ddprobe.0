Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11AA24314B
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCtjzYNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D3FCC433C7
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700152696;
	bh=Cn2ErVLmNIWBQcmcODDdQU9Y1VprFzkGzwuVn/F3OZY=;
	h=To:Subject:From:Date:From;
	b=KCtjzYNf1FhnTxQrVWV6DYjPLCAOtiequMtSSxmTcxW1aT7VnSZEoYFC0NZhI5G4/
	 9yfVa3avlICHRC+AhtMwEHlU53A+/7aPlGu/fwH1JXRL4Vc4+PS0ncpqBts6IuP3KO
	 lg62ae5nsJK3yCc1su7cs3DNjrnS/PW15X3YNxtGY4qu4q3M3VicQIfzLed9eF7jMM
	 Q8eqKYMr+jb55yfp/NgGhcNLWhjCdTtrX+BTvO9q8WChz8eCswe5flSb9M58xmFXdl
	 jmFN5pzsaHBO1vIVMquf60GVlZ/N8GtB3TcjU6cmPns1M9nbueEiCtDipDRdK5aFD3
	 fDUOX71jQwa4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60946C47071
	for <ddprobe@lists.linux.dev>; Thu, 16 Nov 2023 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170015269638.3130.5975764000096528300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 522c1ec87065faddfd1c2fc7a71eb29077bf44bd0799a59aeb88538ecb842dc5
Date: Thu, 16 Nov 2023 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700152696
