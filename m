Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA87D366
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DBBFC433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665743453;
	bh=pi3txExN5V5kfZFCA3CiR+CzsdND0RWDs38WZlMJJds=;
	h=To:Subject:From:Date:From;
	b=Zjh2JCxlal/DYn9CqE1AIjcAUBdZxEZMfh9e0s5CM891WjYobUtl9chDDRFr9h+MI
	 mVZGBpkvW68hdhW44Y7XLYJIvmSf7NPBJQ06OJtf7mW1ypFitxoXMkuIwkYLba9tRr
	 gsOPxTINNz8EO7wQp0T+yKijpBujKHxi0zt+2Qblg/GNPY8KCGDllCfM5uossA0+1p
	 FrFic0Q09uhPxQ49HRuxJ2kYK4KmtBq3vclDyJT8/clSrQuDQOhC3JPb0Ikn7slJKw
	 Cs3RVNhAFr/o/DLsHaq+kITPx17OKH37OHIxE1/J1r4sKwUMeWfNNJGYB1JiT8g/RZ
	 ZiEf3bfNJUJow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB16C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 10:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166574345331.26374.6683535032691774770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327fd1b9ea6861f7dd22ae7f3b64a6b46292378c076fcef20206d13c30a4175d
Date: Fri, 14 Oct 2022 10:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665743453
