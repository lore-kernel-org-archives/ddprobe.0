Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC52D7B
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94004C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666878054;
	bh=11Xhuj4IqZC8VWY4HPUimrk2zdydQqvcxmGYGwYIktY=;
	h=To:Subject:From:Date:From;
	b=kPZTGpcDXJojETwSEuy1VTAUhk+AKdjbEuLBgcda86SRYOzNYpvzkY+PIVlRw4Wbh
	 AmouFbQnM7ZGy+7S/8FygKkVHTFSDD3uC5+ehiundKzThstNB4t7YjEu2PJ0RBfthf
	 Jq4OqhZUxNOU914x1gCgJJcAqcPanGItoIBo05JNHFptmwbugWiLkvyVMOF5iLzKIc
	 +SsCLc/YjsiwA5Aeux9LS5lMXyOX23TyXv61vh5HDm9chBW5awur5/BgSI5x/8GPq/
	 32IgZ7WWbVUxd1IxLKW5myZ141sYhDU4gXPTEFGPnToCvecUBRf7qp+WrfzKHgjkhp
	 ZqKhCrjLVZ8/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75513FA3740
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 13:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166687805447.2074.13876576027921989413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e61838624ee5c9778749c4e11755877823e6a658a776e5e4cc7678d1ba0ad1
Date: Thu, 27 Oct 2022 13:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666878054
