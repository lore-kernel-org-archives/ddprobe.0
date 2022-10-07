Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9906256D
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78038C433D6
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665167453;
	bh=SnVON6NaTGShO14TrdLrhimTAR+kX9pp/HSC1plI2OY=;
	h=To:Subject:From:Date:From;
	b=rGqqTzlr0hnANSpJtiTsK85OZS9Bv03PSRwu2iOvL15R1v9xRqiAs8ByXJvERZDZ1
	 DUxiG7zLhLUjAzXhIgfSynozxCDJLi2tsQGWfBRVK9wjsgotnKAjMDJ/CJZ7x/TiAE
	 V/yrxTNvASFSyrxo4u9bgEz3bi0UQ7c5ED7/emAHA0BUZ8MxyG9pil5gZGAOj1QNSj
	 99RFD6pm1lVU8k77wkC2SNxet+VQ2gBz+iDdQ1kALgB/ZwQHuBZ2lAjTLlatBIhxpM
	 uaI+L3cYkJKBnKIcbq/rk+FbaW3FuyG+G2RbCrR0JK+umHdWrCmrupdD1n6Bq6OLWe
	 zs9o4enCBjcag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60547C433F5
	for <ddprobe@lists.linux.dev>; Fri,  7 Oct 2022 18:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166516745338.23252.8856919651955131432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 061ddbafc6d51c544bac03514caf259a1ec2b6aca4e4f01ed883affa5d435aea
Date: Fri, 07 Oct 2022 18:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665167453
