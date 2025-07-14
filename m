Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265D425BEFE
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752505794; cv=none; b=cHmwYSxjTvzAfOmjfybEWu1kOlbQyatkKL/390e6kJmsFUnk6fKYBMA0B0jQUU/ksra8j39ktKrhh3eJgKtY/mkZfXEekGN10Uen4PWj4nyKbvWPr96B0mHf/AnP9ekbMYH2gMDKye06Q25zjodUcKHr5bTl+2QQXQ6HxUusm4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752505794; c=relaxed/simple;
	bh=XyL6z47CJf0IHmca+6apuN2MdITYOqQM1mgKTO3+SAY=;
	h=To:Subject:From:Message-Id:Date; b=gVBsyQqu+R0YlPj9VWMl0XY5pTsmJOhgyDVNX+KsX22bwH+kt1hSss1fzPTfKz+hHPmIz33ixLy+hRasOGYcEYmK7+ejj8CscB0NpzyxfGMWtisSr+jYl9/GUhNRdfKGTQZnRLw6MXoEI9HYLTsHsp3nNv/S0du/od9tpSdMYXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EkIGce5C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EkIGce5C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4144C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752505793;
	bh=XyL6z47CJf0IHmca+6apuN2MdITYOqQM1mgKTO3+SAY=;
	h=To:Subject:From:Date:From;
	b=EkIGce5CjUbkqnlkhcZpof9ZpXiQvzKj9Ac4Rlm9Z4N0kqKM9OvRmT2Qkdkl8KTrS
	 rLNm+hqFbMeb4BTlyJltZ1fZIKHnbVCT1S95xdLI+mPuvYXXQn/hkVfVIQvSi8GYQ+
	 Pg32Fm0RwifPDpHxuy6Unsk4SIHUExR1dtoz9wbOIW122nnN50hDDqT8+xg2Qdz5Zq
	 IBS3NLETBRE3KdQVJHk+d/Q7SXsrx2ZCsgtV+YCaCJPQHFjuCNLYNQP+evetTEXAGf
	 RcSKZonEXBqCf04ZsSeplO3bK774r/bKli3zdIu+qrl0LWRB2ASpt/Lu2Ig2W4KhVr
	 6p80LUKvJqpRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923BBC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250579358.19934.15468517071568282330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0257cf8b22d212c0f0e14e802b133539706a214bfd56f29dee32d5f45c238ac
Date: Mon, 14 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752505793
