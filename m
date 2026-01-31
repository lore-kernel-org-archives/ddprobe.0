Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3789429A9E9
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769832834; cv=none; b=H/xJxCi6sJ31Hn6QS2aS0WUs4Bkp6SuiaGG/oqXhzarpRHoQoH+JEDxMzotUTgCGyDBjDjjdGGKWkUYlMCt7yy8vNwqMBOCcWKE+DvRlA0PP1f+pSRRD7S3LTg5K26NztR1wfktilOSNUPG7SNvG2df6cL0cLhw5OJJZUdHCiPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769832834; c=relaxed/simple;
	bh=ZKggOHn9sTnk1j7WWJWsaKoZcaZC0OWwhsBB9VO8yZg=;
	h=To:Subject:From:Message-Id:Date; b=FyPelmQ/t3kFDb37n86MYKe7Sn/KpBBhltMWG+GA9l41TgyE8GehrNkY2qgEqehe9E1pj8FvCqpHzcm34qoMN/1qOdAXorgf6yGCzOjKKk3W273vwUtPJy7gORoYCiUiJcyhkT9VNZvKJwnoriu4Ou0PRl9IJRb6C71197y44ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fx8qNhnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fx8qNhnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A880FC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769832833;
	bh=ZKggOHn9sTnk1j7WWJWsaKoZcaZC0OWwhsBB9VO8yZg=;
	h=To:Subject:From:Date:From;
	b=Fx8qNhnmFx69qHq+LhaFFaZOc79wy5KYGZeg3YhFiP+Gar1bvTqiCIK255/FQqox/
	 dvbxIISzjEVbCdZxxgSUWOC1PyKw+WH8Xdf+Q0oVh5Prwi6UR9yWZk4TKoPQydKYfo
	 tElALVY3u0gyOUZ1/vRlsWR2GdOQT0Y56puN8jXjnZppjtO+YKha0kziZcVWXWep7V
	 noz7vbbUCRbdSn/HbJMP/A5l2ntfwWx5gHHyf9Y1omRcHRY2fYq6EbfW0Zt5LHDoGU
	 esXQmCpUBydXAEpuGIsJlx7HilQM87ZEp6KkWyWVbwaxpZ2I7F2tam83UVnEKXSgtP
	 LBz70Tr8MXmPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B63D73EB5
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983283358.28692.16561392834330014986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2a10464551f1d2acece40510c9b40e4e08da0721cc61043694358e7063b8f16
Date: Sat, 31 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769832833
