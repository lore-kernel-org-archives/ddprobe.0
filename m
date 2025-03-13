Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CC9610C
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741826934; cv=none; b=jt18gnkOP44n1CYYQrssduYkeGohzA5sTfpnc0foaFQIHwL6nXZBYxumnn9wTxHABrQeoL5gFA/9Q9wFLOe54rjMiFKXEQwvGQDh/jUxSCNu2j2w/z6SQ+wb2yJqId/1hhIDqYVW+0aJhUAgosdGZS/9oC4rHu93KNLxSOy+AFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741826934; c=relaxed/simple;
	bh=tSHVM31lE0keyYIBy8kJu8rnvzA+wtOtgZdO6QhSq/k=;
	h=To:Subject:From:Message-Id:Date; b=nH32sK2WJHoGvN/fbMnB/rvLmL4EwXmCJ6iqw7ncWDsIHF+fG9TnECxWjFoGrDtnuVjBeLcw/7VckjxwFUZuCbTKIOlQE/7qYiRptg/4AZp9kls7iH9riHUg+NIbBw8lxJK/3PPSZMBlLmuFqTBitA/XEhIRilRloVtjLPTdado=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Re8N0Pn9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Re8N0Pn9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5717C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741826933;
	bh=tSHVM31lE0keyYIBy8kJu8rnvzA+wtOtgZdO6QhSq/k=;
	h=To:Subject:From:Date:From;
	b=Re8N0Pn9wn7OeAh/TIyYInqNkQlUTbPlrZR5jUjxkTIMEfALCSb887UkG8iXAn2UQ
	 dMj5eD5hcDWX8WQfICH24ktY6TI8CmuI07IFDCLy3wlRTRregM3Tmn19FMy8gXslxO
	 +VdnOcDkz4GTSjNfs/dn7vD701hr9NVaE33ZNlf+tS+MFuqMMs8sjsCsGei9nyEEFL
	 +xiWEfxFZPRp1G8WTOtlYEpPtbKlzdM5Ue3O5xwYFk/6tWqky2bI7IeXDezvBR/Q+D
	 RDdMi+7okZrFzRQmDt39xxk+owQVDLoazmmABCzuZYDdMNMD2tuMcgkBNo2I5RdkxR
	 a+Xz3F8yPl1jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA29C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 00:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174182693357.10363.12407141698322349358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c7e6cbe7142c32e0a00ac87a784b28da507e414fdd71ad60a46410c1936d25c
Date: Thu, 13 Mar 2025 00:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741826933
