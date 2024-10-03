Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4016E80BFC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727988355; cv=none; b=kPsZzMdtFuRYWYeeIYun7pzWG3vgD6GBvyZvUm5AghAfMr9wxK6m4Jv4yoQs7uxU+oQls99TDzRZyZ/kHZZaAl9tQb6CQ24I/FgM6je5WTFcVcWL060lPG6TYS7Ur96OIu7AGpxttupoHVeK4RvPD43bO7uu49Wieei+ghiWD4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727988355; c=relaxed/simple;
	bh=FNlm7DuQ6pV4eguAi5qmMNTlDRRtOhYzlfNVqQPjQNI=;
	h=To:Subject:From:Message-Id:Date; b=sMiYG2kZvTsyvbXpoNeDDu14qekbu2wT5tC7AxyMDJpNV1Pyp56CDXBMPqZz247US5XZVEW31vHwQCQ6xZ45EMqF0an0DzKew2EV8fRBJPytabXlvaUxSO5Q9IxjtjCWtSc9tRuxRxgBphnQcRh61P/w0yB/ATkGB7IlLzROQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1awPi+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1awPi+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF52C4CEC5
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727988354;
	bh=FNlm7DuQ6pV4eguAi5qmMNTlDRRtOhYzlfNVqQPjQNI=;
	h=To:Subject:From:Date:From;
	b=h1awPi+VWVvMsJnJtPGHVO/9YUDnw/7DCe6ZJtI7Z/cjvYV4opegNDX29dRuOvNHt
	 tYQkPIpQzGHAJQDan0PIGcWCr+cMllOk52Nrxp3lboksgKulV5lNrpcoW0UCFqFpqD
	 i7Phd0DlJ+hleaaA0s0EmDu7fPfcZVvTxk4qQ4Aowxw0P6I1b6/al+mXG07ELBuAQE
	 uTDmpci2e30zhapZZA5u9+q+g9dtrNZiUIWbr9X4xWmVZoXtZCDk1rIji97y/+e7OM
	 ZH+tGKdjIufNZWiq1rgtQ/Jq5X9Dz01w1Gqup7SYJ9p2IiqnOXp3s+8KkHul3zAnna
	 mZB0ntspfqyvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD6DCF34AD
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798835363.14026.626810734432167667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ee090385123cd88301122d64f2bd832e83338b692bf4bf95b796d1e942c7f5
Date: Thu, 03 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727988353
