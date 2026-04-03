Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238E41AF4D5
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775190334; cv=none; b=i/XnR3XE5l7lAGup97B4nxMoqaefXkxjogXQFiD1HUYGzrZpFtrBY3lC4leNkR0+n7pNfWMsgidx1jbNhzVTvv2N0t1tHVl39Vrp+nOGBdxNrpUxXC4Wp3toVYGmH7Oo/YOFaS/96oKAjNhxEavTKZVPue1GIxmUIOyDIscmgLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775190334; c=relaxed/simple;
	bh=CF3P3KvI0lI3N585U5NjlB2Nz2grx+MQdft8INJ6vJ0=;
	h=To:Subject:From:Message-Id:Date; b=dioHDF521abKEcNIgF8ftAynmxLStnIzPhvWE1NNYFOAWIQMnM2qKyI9O4BOidj7HEGELF6AcpuLlTn/4LcR0Nnd79lWDUJUC7yXz9V8KiZVx9zrBj5L4eDTgvsaf9RZ3u0MR+4FVVfrQHAim7IsDs3WJA+zdT1FUNdDnOQjz+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ta8ZRq38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ta8ZRq38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5A8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775190333;
	bh=CF3P3KvI0lI3N585U5NjlB2Nz2grx+MQdft8INJ6vJ0=;
	h=To:Subject:From:Date:From;
	b=Ta8ZRq38QYdw3JhUiSRYAs6x8sgcNyWQrImYqe8YUC+89Xp4V8YIGKHfazgNOklnw
	 Z7O9IWOEHCYwfCKUqUxrtYaNdgst9T7XIW2HDkffE0pynqi7pSBi3n8LpVTcLfcvqv
	 dAhnQzqkloAyuoKI+VuGEMy/9vF0MLYnnNSUJdmrIB1m1ik/+YGh+dncm4QHEqOcKM
	 n3sR8fx1/R4og/hYghFxUheH4nMXnFRtJyoU86Drpq8CEEntHin5X62hYPEvyZ5Qbq
	 kAJ/NQgtw/uSh514WqAOlZw0bpuiiHAs+Cj+oDmUFNJxv5c6oRznJnPjADogtH9LzE
	 ieDfpaBhwyERA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA11D73095
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 04:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177519033369.6509.4499303078282211909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e83954ab4ad1519228fea8af15912d43286b612d091e64daa7ebe0dbe838c694
Date: Fri, 03 Apr 2026 04:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775190333
