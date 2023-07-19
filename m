Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344651097F
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 09:11:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C64EFC433C7
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 09:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689757868;
	bh=0PnZAdUZRUmRpBKbyNNwC1xaYPmEyZNMXkNrPXFpQFY=;
	h=To:Subject:From:Date:From;
	b=U/Da0d6GcEQ9ET1a2oYEOXAl/qcYgOA45swM/VnjjjNmjplDnH4F/Xqpwx1xpEDKi
	 9xObT+LbdqmnL1pgkKq0va10w/QOaanOHSWHZ8u99zrjdYumN8Uo8poW/oW/96H3d+
	 EoFmWMdctPa+Mxbrr/ooOuPOq/mdMB9+iExd2UFUYuVE0jExVf8VTa0UyW2WABEiID
	 NM0Gac4zN2RyJI64CNc4N0RiTFi2ykIN1BfL8Pp1UdA/KOdWOkwPkfuRoZ2L5fNoNV
	 tgHfC9L10Ts0zY10dQsrZaufTxlIJXk8+qnR4prt2IU0LFfgqB0JJvTan2DiKfVHr1
	 lqpDBp+1l8WBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A2DC0015E
	for <ddprobe@lists.linux.dev>; Wed, 19 Jul 2023 09:11:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168975786866.2762.13350718677058800708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfc590f7919df9b7fa7ee1e3954bf5a88e9c9315c9c9faadf6221f57ae6fb81
Date: Wed, 19 Jul 2023 09:11:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689757868
