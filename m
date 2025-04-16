Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB380217657
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744835393; cv=none; b=tHdC8mUhvTsRZqByX90L8FhBgn4PxVyq/NtaoxyQRjSZ0dHRsbxmfpA59SPp5Q1zODVHa0rp0vcjFWBnmFiBRFaHTbCIbs5uGs/BeGxTRxQBIrdtlkDnSEFo16hMZy4r5dIFiEDhHb0wrtYH7Lexi/286FEZHhHoORmOAzSR6aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744835393; c=relaxed/simple;
	bh=LY9hJaspiO2CKD4XDRBDUVYUo5hqF4LWH4laZvHNZw4=;
	h=To:Subject:From:Message-Id:Date; b=SRWapsm9SN2j7jeP758PQXTfCpWqN9pIlwOpUWKk1uaT8lSTAX6AqhMsCrvOZVmU4A4VUDzDbVUG0LiBQPAOjcHEJg/lSJCV+n6CsyDHag/q5MF4DpoJpD/s+1o9FZ+whghoALV1vfnYC1QqcP14ycBzMsIoBe7WRybAJ2HO8a8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1qBEbPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1qBEbPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD73CC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744835393;
	bh=LY9hJaspiO2CKD4XDRBDUVYUo5hqF4LWH4laZvHNZw4=;
	h=To:Subject:From:Date:From;
	b=j1qBEbPJbxr2yH/HDkZULXX7e1SD0KRbMavuB7d/3LeEQb5tsmauRHEgQvD0sGp3o
	 lZvYxA1OJteGEuy+gPmvDBlXLRDHwqL9DMLly6LH2JBE1EED01+L9l6V6gJRzrO7U/
	 9op3gFg6OGhlo22EXdrFGm6kaLZUamd6ET4vj6l18cooHxU/QzHeSkUZsSC1iXPbuL
	 jqc3A94NDs1od+RpUl+KQS/hxlqkqRTYwFKQZOyomcylAW/K8oPNV8R//iJMaJlPMf
	 T8lD0FVpDk12Aembt5xxp7iF8ts0sEIkXierxE4MMXfntiq/Xdji57sAZ5EoyQAy6d
	 rr6h6ZlTq1LlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8ECC369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483539362.17265.9034426898016870373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79bd5eb546492ef5d18325625abbd4d80e368a2de353dc7117d42005d266c10
Date: Wed, 16 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744835393
