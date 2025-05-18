Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352EB4C9D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747597794; cv=none; b=tvyqe5sBfC0NionAtwwmL1nvuhk+vKA4kTI5JYDIBccPXIDVdWGtgCXM9jhY8i5k1KyqgFny1aOoIohjMx7qzF1OxfB4fhOpE5LaYohMyygN3ouTRMW59vJk/MzWBtjpwvd+Ja/VHCzvTbSacvwrlUm0WPZekyoRjPlhYVnxxVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747597794; c=relaxed/simple;
	bh=cp9VP+9vY4/E7Iqhha1nw7hbylV5pdM/N4hSl4OZRFg=;
	h=To:Subject:From:Message-Id:Date; b=eMTAAE7a70GHF/UBYSsjBEogg+tNOhzNMPunNMDoMAraSghZ3PXSgTtGA2hOHHpSJiKayYvBXbb/uSmorNEfpd3hcZZnGZDzHEWPBw8wdkvTovGdLZje3m8KnqDOYQf2N5r4esM/cpyKnIif7kBsUJskYS4SbzE/MesOdHUQCTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pd4UYoxl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pd4UYoxl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C7CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747597793;
	bh=cp9VP+9vY4/E7Iqhha1nw7hbylV5pdM/N4hSl4OZRFg=;
	h=To:Subject:From:Date:From;
	b=Pd4UYoxlMAUHZsX891zUPQhuzjxu3NyV4IpA3tevKEKtkYwrK1hmw6532n/hJnk+Q
	 5jDocd/GRUHAziLmrKkfM+fqBAESU6HtI6N/UfgSXX4RnaSiyqCuM/u5QkSoDeD9AV
	 IvD3GjidY3XE+Y3u/ytCVkfv4fcQp4e1cB8pej8b9bgK/rkqDpaAGW8+7dJMYicz8T
	 EsqRQQj7oImdCLqtWbEgpH6FA7uFM8qhrqiJXoJzHqhbRyElc9E3gOcbgqP/W3LTWQ
	 OLyF+xhUMhWCz322WnFdPqelN0rjyAGJI6u/NIuuzLiRHRde17k+I+SppdEPE81TNy
	 XqcaDBwLJzD2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4F1C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759779357.30724.953892002512389761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9996dee054ca25ea59a83884143726b859230163a3432685f7fe08c9b846d118
Date: Sun, 18 May 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747597793
