Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D1E37B3FD
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769895834; cv=none; b=Am9sAUiktif00bX61m+gJBE8RMI9eelQlakXQCs1ZifnD+axp2gKXL5NnhYcZ/HWcI6R1yozBIQk+r7/ns/+BCHiHUWDcUVj7dRdt3h5R1ANjTRaJCPfADSjxCuBeFfckw0TQnQ1AZ+k9Jz1AH3NkdKwv5Wx86XR/atA2mcWyPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769895834; c=relaxed/simple;
	bh=fVBwDlJX8+wjtu1u6BJPBFzEjW1OMgDtK7gmhielYwM=;
	h=To:Subject:From:Message-Id:Date; b=J5vHYIu1W14RnXawd8hgIDk+xNbWfo8SefCECGbFjgN3bvwrGRnlbBzE/yLC9DLm6Vu9QnBnCQygxmYMICQbpuN0FpkMR2l8aF+LNvzMZxD6+vA2HN5ir4/phYTyfqq7wsT1kCtFZHxH3sFGoU9qI0XJ7jznKpXgHgGPmXHW53c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgIClfol; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgIClfol"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE08C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769895833;
	bh=fVBwDlJX8+wjtu1u6BJPBFzEjW1OMgDtK7gmhielYwM=;
	h=To:Subject:From:Date:From;
	b=fgIClfolZj7M+T5Fv2HjeQU9tceYqYAvxVKIJpx3OyzUBNejvSssbBZe3TEhYdS27
	 MaJkQTXkKbEnvz23ILDOQQFrHrcmIBuH3AjQ7JKoznyD/H05uTt8g7AnuhaEr5K2bg
	 TGWQ7eMlmBHM1JBL2BxARY6MVzmLxsssOqCifABin5OuIcLhhjZHG3hP/rRMJ6YeK3
	 O3YlmjdmRg4GHsRPu2uPJ5g9oYOYb1nXWwmKH6ml8CAcry7puG9pNGeNvlQI1/EhLp
	 PTY6r0oC94wqiu7dsQx18KmFyzSqyHQvcutXWb6WLX/fZBxFdU4muo2sxjtT5631l0
	 F1M4YQpPxodQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84BE7C6EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989583357.4532.10389296330548235775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b913719f9a2eb4f704205faca19164115ccd326d1c32444bd795cee1d06167e
Date: Sat, 31 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769895833
