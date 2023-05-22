Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9331642B
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23ECC433EF
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684792385;
	bh=oCdyP4GZT9oBvOU8pQHrAVi/QpKwQQ3YX1vZW4w+h7A=;
	h=To:Subject:From:Date:From;
	b=Sug/vikkXDdNcba2eG5oA2rmNwfNoe+zFFLbj331+0oYqiL0FbuMoS1I+Xpt3A0bN
	 27M9196klnRrV08ce58IKgp8ZBvy7zylEpiKaehQ8QCAlPSMCQWJ5LalwV8MwiJJui
	 /A0Osw3NBrJfq2ay93ZL+YggFTrobKu003oM/QGSWB2JcL07VIqVKn9XkV8e6ZsP7j
	 YRRwcvK4f1LM6cCpWeyQJA+c+3H/ItbR0YBP1G+Of1sZ7KU6xoD75yMc+FWN3SrO6Z
	 4c7eCeKxQ4flZYhekpMJspIyLK4r+TWAURJA7AkeSWmZzIyvk9FoTcHTCyyCwbW4BZ
	 3CqQPfQKN45PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C585EC77B75
	for <ddprobe@lists.linux.dev>; Mon, 22 May 2023 21:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168479238580.6088.18282227301775138175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f72b5f63b709869958655e6ba342d3f74982f4cbe5f352c85b07c524207ac8a0
Date: Mon, 22 May 2023 21:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684792385
