Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A7B7547071
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791895834; cv=none; b=HisKV47zMIBu1P1SAR6dqhDNf5PwPipUDG0F5sOLZEZ9arejNOrylTIk4DagYKUg7YWkUWGzApSgixhxUvJtUn9fVh/QO9pacCU2UQYSLvAxskfDovM6BkfVWsM68XwW2Q3olEjUlLiGQxV/vC6UrwO1XVFYZbHKHRN3SstkkdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791895834; c=relaxed/simple;
	bh=YsW/RFjKhKMauopiNH/JrshPhI6w+9g8HOT7wkjQki0=;
	h=To:Subject:From:Message-Id:Date; b=sGfPEkCempIUQtABFHrn6uvycZoRV6pcZt5aWPXciWZMa3T+Tu5LD3uqJTCz/5Xs4kEFqiRxIIINuOh1ED7RfpARr16g8UotPr0L/zFekHIKV8SMozLxcP7o8umWrRwq7fBfvprfJEKEWOaRvOUXRpcKe7+9gX9FE5lLh7RDzXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J3Cr4ITf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J3Cr4ITf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3239C2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791895833;
	bh=YsW/RFjKhKMauopiNH/JrshPhI6w+9g8HOT7wkjQki0=;
	h=To:Subject:From:Date:From;
	b=J3Cr4ITfOQjcb7evVDVit+uTjSFjTwMGX5etS2egPHGwJB8jjZxKU9lahUvwW7MvJ
	 IUvktI4OQP18Yfc+olk3eN0Zzj2X94w1g6VnstkBtaPIO1gncTqGiq4DSVYsabZBnK
	 Xt+xY/masoiZFwtOv4o17WFSrdVPaoWkhlRnUJyTsQLLrf5q8yPc+2htY7ry2bJDaJ
	 +aVCghcb5fCe8M+4yYQgUyigjUQxgPAv9APHvbuZTLlIyr9UBEpuq/zqu+vPL8DBUK
	 Lq/L0o7+W44raH4MzeVbeVphq8+rPpd0Plw3uHvevbb83N7Wgjiqw1nUTL0QPx2c+1
	 1GQRMTGRieXDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5994CA9ED2
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179189583373.14455.7154976486225230710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36d6849deedd135109105127b9afea105a1b2880473b9a3acfa31218208d9472
Date: Tue, 13 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791895833
