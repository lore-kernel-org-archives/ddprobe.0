Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D0BEAF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:34:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C75F1C433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692347648;
	bh=V4j2PnTl8W+A79F965q/2FK11J4SgdKOwKfrKpfZDeo=;
	h=To:Subject:From:Date:From;
	b=S/z+hMsacQP9G0FieLCRuBQ2kDz2DXl2sWm9g4rsOLYR6Uh/HJjmc3KJNOvS4BIf9
	 JY1egVN90YiBjpl9X5kMS/YqgQr9sC+hNNJsFwtWS62sS8z63p1LMY+3LPbsS0k1Uo
	 2lwZNFJH5KHo10AttDXQqloZNpKNmZp2GANY6LTZc3LhMTckpBB7I6DptC8eNSJGx+
	 Vm+5UjPE0/oVT+AXa6vKzW8PJLm5skaOwQj+i57jM+h9wk1Sz2splEi1pd7rzuQner
	 fPEvZc5uNb0yYrpnZ2RqIBhheYhtr2UqpfVsb/+6X4wQadacK9IBAhHz7rdiR/QRHn
	 zW9Ft8fcAkYZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF701C678DC
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 08:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169234764871.3561.5124653263930070674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d8ad2c6ebebd5a08c71863aa4ee564de469c4931ea9cc78abc9e95db70177ce
Date: Fri, 18 Aug 2023 08:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692347648
