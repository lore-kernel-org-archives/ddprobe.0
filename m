Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD951FCD05
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737975954; cv=none; b=RHv1RQcVfzX3cqRkBWU+1SfmJGCjmD8pRlPZVPrpabYPRlQLA4JRE7XnOz5KqHqA/FpgsTFZvULzFxX9UqAJZn73jzFmPUqh6FcZ91PzVhQ1I/APaUbZsiyNcWfXHlDMuuRRQR9f6a8aIyNTigcWT8DC3ZGmqeCPuKFkuY0J1+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737975954; c=relaxed/simple;
	bh=c91KGN/nsMxljp4cE9hycDsBk3uM+Ob2ppE0qcYBYok=;
	h=To:Subject:From:Message-Id:Date; b=Vd8BNi8lonEX1ThUimef0Giinx+K+zVmMUWLbQKhLD2AQ0PFa5NmapqB5VDFo5AQOrYLhHIROM4DZ7IOrH+CC2VwLIF/I7f3jwmG/f8rHDalvW9yjmSoqdR7/n7+nDoBU3UyOwnE9ym4F4V4XYn+lST869UQWqP6grE2bey2rNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iHbrMz4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iHbrMz4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60B5C4CEE1
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737975953;
	bh=c91KGN/nsMxljp4cE9hycDsBk3uM+Ob2ppE0qcYBYok=;
	h=To:Subject:From:Date:From;
	b=iHbrMz4PAjxySqfjuc9230M6ZXcRWjEMU5K6VFwbB5SqLBeksXldFsa6f/xqUOhWY
	 uSwQ7oGZXLnoWQ2OM7nc97TjcQErh7ICQVm8skKDDCfcP5qiPhF4E19m0Op3NkhLM3
	 XzowCx0yQmgUdw8Hz9Dhn81LUs6tbbxhbbSjeEWvhIJngiOmK0vnWIsdNKGz+a4HBW
	 mtvfweFG/NWfDs7vHFAKfneWklAzbeuHG6Gf9CnFmd+2vK63ZvIf3vPpDVVNsJ9y/s
	 Atfy5RMz5728axVMCE6ifpz1PUlDU7C/NztG9XFUswqVJE9TWdWKIR4FNeWHH30Rzw
	 KcLKGjfjvJhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970E2C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797595358.26352.1945254592996951858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 507872e78d5928ac6fe24aaecf204edb7376fe278c82b48c836351d63511c572
Date: Mon, 27 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737975953
