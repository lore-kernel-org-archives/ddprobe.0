Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5555C1E86E
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741930735; cv=none; b=c87/A84DhCxOiaAy5iuGiyGd+JQhI3zz8B25EPDMO/fmnrqRjMiKm6rzP+QbgzR8Pz6/6jQCZF/9SJvGNaPkLTFCSdDCkIMj11yk0q5lwOrphtFsS3x4CfWIidHWjCOQfPcmE3SyOl9UqFNha0/xFf8QKGz5EwVE/C8Njmw907A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741930735; c=relaxed/simple;
	bh=QMZB2Xjtw7kSRahCTbBKV0oVnLJ7b+sZqsftlYibn7o=;
	h=To:Subject:From:Message-Id:Date; b=plJRmpkydBGdY2ZHU9CZErS9KNQFsXhWkMSn+6S0ifMafITFDURdg0/LQUT0t4Ypn+2QrEVpnCgB3vUZcKv4JYNgcSFZ9L44ARAcLTEdmiWjXrWOOWklfHoyukDxkelPc0WFg5BAuEodE6igXycVSoBfbMC8ffb3YiXRCLdozLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6gNW+M8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g6gNW+M8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BB0C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741930733;
	bh=QMZB2Xjtw7kSRahCTbBKV0oVnLJ7b+sZqsftlYibn7o=;
	h=To:Subject:From:Date:From;
	b=g6gNW+M8PM0JpYjuFPm2l18xR0Tgon53Qe0J+NFq4QpMkoI0ahJ/m7No+aZD25gf/
	 Ln2MEEfA5aNKgt76K8ESE3Y2rq3pqFQDrcLljjScIBuPIg3K98z6NIntx0dR4p5gwv
	 Seul/k93OUsYR+S4H5iAF96iVCs8fg4oElx+opTuspQK78RxIcU6ontaLni3EP+M4C
	 wZGXGUwEAi+2mnR61VGHQ9UK6dgZfQMySjwZRP9MXhNjn+KICSi3nM7b+gZMIx13XX
	 Si9MsYKeyhsN1pMu1jG17cX/+OKJZq6yNYRNMV2F7xB2KiRrQd4e+j7HBtz4+GEUXn
	 QL7GMYVAOF3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7921C28B2F
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 05:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174193073365.11029.11584968326377692474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795be3f168c49c473c8fbebee55b82f040660624989601b2e497865025750279
Date: Fri, 14 Mar 2025 05:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741930733
