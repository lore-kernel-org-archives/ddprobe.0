Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2918D154C0D
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736724954; cv=none; b=GlsZ5uGRybLYFpQLhXYQ6KLhuVxVhzPDey+OnKrwkap6njX2i2u5xKjX01oeK5PcDrbcKPFbjTbnIEgFZq5jW+C613jXZJBWnD3BIs4vmUn6soxNKj08sJYodWNKgxRkp4yJfl7157ZG9z99zZajIYeyEGVgNy4F8Z7cFzytsDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736724954; c=relaxed/simple;
	bh=qq0Rh0oYJKeNlwHhDCh3Up+xgJtMjTDANBb6L9S2+ao=;
	h=To:Subject:From:Message-Id:Date; b=r9KQs3Zwl9HNY3v6q8COOb6JT5DqOhQ+oXheQNp6FQ2EuCCUihMsNT9hVuZk3TbaZR3x6e2ulvqnKgdk5bc1d/8TL52Uio76mNtTOV+z55dcTfBnuCZv+foJdyOcbgITDREezD2xOYFQkLxYmhzLzJRu69pVDsp4a0OLf6u8pfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB6QMGOT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB6QMGOT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDA5C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736724953;
	bh=qq0Rh0oYJKeNlwHhDCh3Up+xgJtMjTDANBb6L9S2+ao=;
	h=To:Subject:From:Date:From;
	b=sB6QMGOTHFGwqGYdR29MYMy4PAfMNdTjtdQi3Cr0YVQAWPEwIhCwVeWHCVTVb00vp
	 IcZN+KGzSNRBNPm3GmJU3+suGZwleUw8n82qsa8imlu1LYrfioVOSy4WC6S+7OWOqi
	 R3+BxyU2OrMpp5a6ivhjznQmWZ8fSaFO/hvwdUmpoPbnQYYOMLrIYAah9bjgbusEez
	 wjR4o4CgavTC1chZ/Qpcg4eLlqPMZixoUfZDvZ5N4ADoxCUKAyHYLpmb2MDL9CxEIh
	 XzDxCTWCdU0Mp6xlH7yXXFfNowOOY3T1i/eSvc99LrNCGjIUgUq4YL8wGtR8qfr3gI
	 UorOB6NKU6gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D81E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672495358.8750.16287471286096040721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c987a849ba0501034034d2fafd945c5d0ff24938ba977b943c6be551acfb78f
Date: Sun, 12 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736724953
