Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF54F332EC1
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774472694; cv=none; b=Qyijz4hqTffTl/wgBF7w6Pwv2z4YvlBLrLWxKygyv7KhifBdO2ZY30CyOCuneD2iRUNP12Hy95lpBYGWmTbcIZ9SJYg/QQ5S9Rq9QGGN5ev+BnhPJcJ1MoKteKI+/LuhSj8N2oCxbgH+Xj+nFpdc/TQE5ZTjjbp4XriEmUAz0dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774472694; c=relaxed/simple;
	bh=3prxyVDfHu66WrcQv4n8UC24/KtNcWIHnWjD2XXV/aE=;
	h=To:Subject:From:Message-Id:Date; b=jDIlPCInRNV6uAyy25ruCZZL4VLb+wgHnw2xr7YRjkM6kG2DKrZkE0fFhG5GGKUFkTL7tDwEzDRvtrYeIpfZ1/16f9baD+h8FWmpLeBTtg6j5D+aH00H3czUwCEUixq0nLDSef5Dt6aVKvUNygtI42vRWG2kgwMxA6F3iJf7/rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ln7NIvVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ln7NIvVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8D82C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774472693;
	bh=3prxyVDfHu66WrcQv4n8UC24/KtNcWIHnWjD2XXV/aE=;
	h=To:Subject:From:Date:From;
	b=Ln7NIvVtYIiCEjh3O4nyNlDpO2sdTZmFj8siBewayqGAYg5NeCeVuRODoZjIUzDE1
	 hT8YDV7lA9r8DxGxCaXvqVF9SVicvYqI5OPGdNX4v0q041ZxaWMLJ5QkFSau3lC78O
	 tEzrjGb4N/ucpdbFFdDcacyQGzgyh5rPxQT7yKKiiiNzevLAo7lgKC05LgwrMxZK+1
	 fQhI2/9Oaz1HZ6n4ngXhT0X4SgIG4phZOmDPhW8WlbtZMqN0RkjY6G38GBWuQOAp7H
	 4buYbY3ailUtSD+vdd7RWIV9KTffGdBMwc22VsKBHLxM26rSXxFgFbR1TGmnvcnOJt
	 v+ypjKL7KVAFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9428D109C05D
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177447269359.11115.2126081102435879970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ca1fe7ea872888112413ebbeca634b510279ca8c38287d9abb62f68b833fc5e
Date: Wed, 25 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774472693
