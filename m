Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2288370D79
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772783094; cv=none; b=Xi8v0lxL6Ij3/ukOYx1sFgmfVhN1XoCyiZ8kpF3zZzT6HlG5VNaxjBUg/gwDqGY649jMEPmoZnVr14NxWnhX5gCYYkLXql2yKxX9TVbtDyfPcNRJb4V2BXl8Dp4KHcrNH4yDbcOoE/Uxc4JcEvdRjuv/frt4Py4GMi0HYj4lqSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772783094; c=relaxed/simple;
	bh=QMhWW7zxpo5wbDUcpZBnuBSht2JyUXW79YR52qd+Gnk=;
	h=To:Subject:From:Message-Id:Date; b=O1Ln6lVW9mvrg4RBYQkWuNdGm7cwQPfi5x2VrzcxDfa7r/jW5pWwE2E1sPn4EikRbCZa8Lk3EbEmTAW+AZWZQN5so8yeQ/IrtBFuVu/mbotvhJUo9v1aqqzabx+JTaxLnHiOeXrH+24UCT0ndk0OLRHHuB0v/chWIKnu+u8YvPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFL9OlBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFL9OlBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ECDC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772783093;
	bh=QMhWW7zxpo5wbDUcpZBnuBSht2JyUXW79YR52qd+Gnk=;
	h=To:Subject:From:Date:From;
	b=MFL9OlBDyyx575dZZY6ZpsBfuj2a3hN90egHXZQxXJT0XdZlGq6RSzZfwVzl71k/Y
	 e51fh5YShhGEhcdWAQabcYsk7DAF7tLaHCLciayJf/6vgWFN3tll91BxL8IJi8314V
	 iQC/woPZgSqExxYJts7kYRQLvr9E1okQcBVpRxHfeyk1sZwIabbRGuvZfjgqHXsB+a
	 aYkUDLGYIF3ah9KQRyRlP6brIAjnxRtJcgd7X0TOjeYKS8Nnhvz4SEm1mmRPkcYJkJ
	 zrdRI0aJ0VnM7pn17QLv2DDkx9shiwVK/N53QamiN9YQbOjwd0lZa9ycX23zWjfRuP
	 lO8uuXNZ1Xvxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2C7F01807
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177278309357.10769.2789614863894334910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1776f54840141bd076b2ca3939d548ee0ac49428cbff1291046741dc6c78a9f8
Date: Fri, 06 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772783093
