Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D987177998
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719415403; cv=none; b=c2CnvDfhasBUzmuinoqgdkDBgTD3DoC0C3sSiZ2pFaP0ZGi+utuyWvYoi8+zNxKjJGKhwZOlNAKKknOUddHcEDh9f21Lu72XgLavD3SpPBaVy6vBHoDbh7+WSXaw9IQBXXaD5Wc/Yb7qiWOwm7GP4/h0tu6NBVE8p1h76NqHEu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719415403; c=relaxed/simple;
	bh=bxZVr6gZ2tqI/XyU+aMCH1RKM6JOy/t+kA3gcXeKLgU=;
	h=To:Subject:From:Message-Id:Date; b=G8i1q3mQ2gNZqCHpJ2Zf3lxijrF2afEoZzNcmEZzT3jUOj4NM3i5cDgiWiPUvk8NB/gdrldT2UzlP6eY8745Yiar+XIipoOj4K7WU6T3RzuJ2BksGnEiUiD3b14y68Q4ITyv1H7AyLzWQCNiMo7GrCaWqKn841r96NseTpMJOw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgVNrauy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgVNrauy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3044C32782
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719415402;
	bh=bxZVr6gZ2tqI/XyU+aMCH1RKM6JOy/t+kA3gcXeKLgU=;
	h=To:Subject:From:Date:From;
	b=sgVNrauym5HkYNelLy7O0iZbE58awHc6mSBBWZoYbA3t2MbGZwYFT3qyW1f7KAUy8
	 ykygnuNtcea/ZIwr508eFT0yxHFexPX+qCCQafZ6wUqj58Eg5+OHonNMCNwXDtIb2f
	 zUqRFVnGJJhM3IBDQ1Mil/kb3cwnjV0KjRerXqunMY6u4AT7xY3cXuXlBKVtb4qe0O
	 zVKmE8O5YaB46sWnXF5ibuQKbA7HdnqFpOTnF7yYn7UQkGLRMvzmYThi+RA4WuYbfS
	 jCLgjNOIbcvKTBKJVF0tkAJrfANuHnMVtKh4TOyHdDopg7AeXR52SR/lSrgaDH2o4Q
	 DGjVHo23ocXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2905C3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 15:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171941540278.983.7016617656254911233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f954fe8fdef6e3a07468a428719fb492532a04618418991631e106750e567a5c
Date: Wed, 26 Jun 2024 15:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719415402
