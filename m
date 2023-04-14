Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB0A7C
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02587C433EF
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681490586;
	bh=7XimLQP0gQdTVVTp9Rs2LjQ8pwp1Q9d2F9VdzSHdjyc=;
	h=To:Subject:From:Date:From;
	b=X9LjEAo2Vi4KFJaZeXjV6h1orIPIsbCwE6QXT3GFvtK3sMsSrMjTYKYtJItyeCPy1
	 yXK1tCZ7XD62ipcp/h/WZhQkz5Qr0pkYSm66VR+x7XuwKAa+sFkdLHAwLuiUfOAuu4
	 kIFjM2OSNsEVCW+bqdxs7ku+eXFe3D47mQigSS3WDmV00ZoYDcAMRdm7YWzqaDXP/k
	 a9MfFfuR+sXK1Pp34oLf3oW8v2DAeIsGkMLOAqCSuR3uf1BKmUgHI6LTkHHKvTD5ap
	 OKU9h0ahWZQs5ezhUjUdyXxP3HTQY4HTAK8ACp5F4nDMBavkMYLVSqDn7H6QkWb3K0
	 SI58Ru+t5Xglw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D53D7C77B71
	for <ddprobe@lists.linux.dev>; Fri, 14 Apr 2023 16:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168149058586.30260.13576943309308721904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5f0c3632ced84158e35a11156872d02c90f3103fb6f97f42ded5010008b556d
Date: Fri, 14 Apr 2023 16:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681490585
