Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E01361DFD1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711824497; cv=none; b=AKdCtc7ov0SW1caDfmW+/Fts5M9IlhTJSuybGv/j5ZWhWI2BkUFPXHnYRBuT5f/zI46nyNV4OPup9Yq369JXXCXNbs13VpuhKsqGnVtYlXMlwXemTKnPqUgS9pG6UAxxQVT7tJvbZ0FUi96LDWQb+os4imTd71xRxjtTNOx1oF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711824497; c=relaxed/simple;
	bh=4Vt2LAKLKCjt65XA+ahePUIj3QNI3CVisMDpV277E28=;
	h=To:Subject:From:Message-Id:Date; b=jMNv3X4+1wM1eQ3YF1vwC4z/Z6yjS7RlZ65LgNHzPu3mXRKvmA2BfMT9yQV22SzcZoyxpLMavqO8Jr0tbRj9SyKMNm5ZN7b5m0uirmYqH643fx/BNvP6nQ27UcmbsFXza+XiqTbFSZJBY7EAhkC6HDuTYSugTil4x30xKvSIYXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgSrB7ig; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgSrB7ig"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F722C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711824496;
	bh=4Vt2LAKLKCjt65XA+ahePUIj3QNI3CVisMDpV277E28=;
	h=To:Subject:From:Date:From;
	b=XgSrB7igy2kZvhvoc7wb5BgmCdDvH+hMbkUa1RnHT9bNfZ/FgYYJK7TEjFpLn1rvK
	 YTJJ4Ce5yDxUJyP7+0jpBPnZUnQgSDucYMYtIHWkM0jGGlmz0e9k8fBFqWHj2L7pQW
	 sbzq0I+7na/wGxzwThFXzY1AYgvUjYCZ7igAOfmrucTV25vJxuIL5uVv+YAl5f1mTY
	 i+rusUIrrfCy1yFZ4uqdKhg9CUvSuV41uGoV+bouVsUZJrqhB7WDm1bBR8eP+RpynU
	 yX7Lu9qui5vPeYw+zqTOhXe3DG3ZhLyyRMQsgpTSrSoigCyxj0y/OrHkBCtm9g0x5X
	 mFkdUpVe4/bkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A38FC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 18:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171182449640.23012.10058835116631952357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15210b09338ee1e55df3c57ed97123a25d4162383205544c03492ad3be6762c
Date: Sat, 30 Mar 2024 18:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711824496
