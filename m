Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4592F7AB1
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766339634; cv=none; b=jVsK2q1ICdvNON7KVV/KsWotVOa6G1BlLePRO/27UGyMML9wb8Lqg46f2NcqUNJ1yOBuJDN6w8vSNEnaVl6blQClr7UU0kmk0lIeXhk2I7Nr8WpO1UOWEAbKQ8OEwSxX+B8uPG8ic9I2EmVVROF6JD7rqn+3mAPosRLwU3/wAzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766339634; c=relaxed/simple;
	bh=pyCLYoyMt5QZdLPfVsv4Mu6KvEncggOtxkmE8RLDmjU=;
	h=To:Subject:From:Message-Id:Date; b=fB11g9UK0t9XqQTN0kx0ZszoTRT6oeEM/tigdb3/Ntw+n0ZOgGUbcoD8Nh4xZ0mSUk/DY97Zr5inzyh44Vf2zw5vmX4GJ7lEmjRs4+d//u9/bfjqWaNw+w4XYZlvG3dfYoT9FpMu15kSzOjgVcQTd6UXWTZhnUN0MvzufaKCYXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtUsWb1/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtUsWb1/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4BC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766339633;
	bh=pyCLYoyMt5QZdLPfVsv4Mu6KvEncggOtxkmE8RLDmjU=;
	h=To:Subject:From:Date:From;
	b=XtUsWb1/pF2QY4GauWSmqyXnWSWd+A45+Z9GkCLUMMx0JkH2xy062xh7TDqeQW/pI
	 HDUjZZigrKf/gHNIF173cYPB5hvS50Z5vRZR/JEPTTfj6YKjxW7XzPTH9jFg67EVoY
	 cRj1d6XUOTKa8QRsVAkJ9efe+gvzA8PRob56E/YYfVbbvVsc1NVSQRXNTuAGZCwnNJ
	 +OpQe9tHJbVktxbLm7gAhDr+f80CL0Xw+bs+PqgvPe7+JkOpmKnHtAECY4PX5w9An8
	 C5TtIXdyt8cH/fjX0F7jL0trxULsjW11BPbMXLnJ+D9UNBuK0JcJWDcVQvoEvVFjpq
	 omkOJ1b9CrP+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94045E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176633963358.1816.5471849720862226176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474efd124bf9872318284e5166dc367164d6621cd0c39ac4a8faba7126e5b04b
Date: Sun, 21 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766339633
