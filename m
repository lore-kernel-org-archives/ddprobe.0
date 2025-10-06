Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242252745C
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759741794; cv=none; b=i4eH2ZHG9pnS1D7SbdC1eLzN10zrI52Wf5Ame5lkBs1IwsTB/oyY0Q6uqSNx4kSqwzYz8F7HzxzUl8a7LWFS2LV1ZmYfjWtUX1vOJo6Mc1l9X8NmOrxhVsElPu/gbEepH3rnTfIqg/aefOWTzsr9Xk6UyrAwmY9MzDA8qmOHhCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759741794; c=relaxed/simple;
	bh=kRS/NFvcZPCf8g+70mHcJ6tl40ANBwj1J45FaEsXNAg=;
	h=To:Subject:From:Message-Id:Date; b=T9ftyQNLUm03fsQ0TgiWaHn/E6bD9V/DfwAdpV7BntCl2Ou7ZFOdW/QrfPWqTDwwojVj+3N5zWHZeLCH0FNrB+s+Rp0PolFZzgOpJ64rzATsuxof1QavN7BE4+ji/CN2kZZ4Hz5WnGh8DvB9CbT6TMXn+NyD0O8HjD9Ohj8KuTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sX3L9Lry; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sX3L9Lry"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6CFCC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759741793;
	bh=kRS/NFvcZPCf8g+70mHcJ6tl40ANBwj1J45FaEsXNAg=;
	h=To:Subject:From:Date:From;
	b=sX3L9LryAL/Y7DxC3hjXS+sgLUgxwwgfOXzbuVGQyXXKlr0khTFIbS+7o0swLBKsv
	 tOZb4M7SGKLe9jp1ymsH2ZCxsitweYaYWZPqdOR4/nCHXxCw5CfyWRNpWFzff9f+iM
	 Ne4U240ET6BzKEAUBl2i+WSuzLyI8VS+T0zfYMmBJ1fboULh6bt4fdU3uS2Qgu0MYv
	 WZV1DYw3TXXvYriLD2fZrLENivdyBfRttPPzNkJ72pjEb2tWCR15PMz+610JxoUp7S
	 dn8qTGm5xYh8ufIfx6XnxRESNYeTay1g71gsvg/Q8hPpJIsbzFrygmvqqHtv+PRkyH
	 0aZA4QJga5zNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937AECCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974179358.29587.2123029794558526102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3c06ecdcae7074880d590ae9d0aa6325c35535209753e435079bf2f5dcb543c
Date: Mon, 06 Oct 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759741793
