Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C0E1E5B7D
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744802995; cv=none; b=gtpIvZIP0C+KP9YgOwuHWymjL2nVX8PnGDxP7gKoktITH9SkvkFkWniSE544qQIy+mxS9FNAFDqMdgesfMXnuoTDXlPJDhUrDQqOHYX3E9+SGm/TyO8lZBFLtN/KYVVsN980PNT6VxyW+WY1cwhCJLIAE3LO23dxCBhrbNgG5pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744802995; c=relaxed/simple;
	bh=E4Fx20YT4Almk+6Ag7rqXUHJqCX6u4an7YMbkeCdOzA=;
	h=To:Subject:From:Message-Id:Date; b=SPkaq8r7x+jQrjj+Yi87qkUXcl/jsBopAeBb/zJLZviSG8XRHEWiqpuy0BRHJzu/ZJFSOqjX6cB93seVdHA1T4BE/u9MBmpbGArR0KSMJwad1aWt8Coil++rQe/EsRHnqkEOIeT9/zIgrhCBIsELi7qbw5jyBjt0s8Cd//0n1Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0XKqVoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0XKqVoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B308CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744802993;
	bh=E4Fx20YT4Almk+6Ag7rqXUHJqCX6u4an7YMbkeCdOzA=;
	h=To:Subject:From:Date:From;
	b=h0XKqVoRfVoQgNC34o+KsndF67oWpNcxAjPPMsnpvfudz8IGKl8XTuZMHmW6ve6v7
	 ex004LuZ0p3zYeoDbIUgCGadj3fazneWuL03TS1olT2Dm8PdiSJxna50NwPcuOt8+9
	 JQzcfqwF9EDdYJ408xqTzk1U7tcgHd4tOvXDKDrfHIRd9o6D7+IpJWAbGOcrl8nEqH
	 0QFQoTG76sRVi41FpQYjx7y7jVlcLYOwDwB+MtMXxavmlOVOJjZSPpNsoD897P7gxF
	 FZZJMCSPSRlToSw3HoFCwWxgwfCXRL2LfkjnxR3Ee2iDlswW+hNvzpV1LZURqQQ9uH
	 rLuGt3ktaD/sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6EBC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174480299364.4322.11872842272034117775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6116494324e7669a60fb7cb0a416f0e442df55b3011d256c5e77c5b48a180ccb
Date: Wed, 16 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744802993
