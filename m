Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E13BB23
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711687697; cv=none; b=YnbEITSy2TMNEa/k7mRs69MvmDSqBz1uY2YR63J99lLksaGPscqQYtaFee4TXtNknpp5NDPniRXZxBUUDN2nc8ejQqwarBtzUi4jBRrpPX5i04yds7W8ntLUDy8X0NtHRpk4ZdwJvrKlNyqgYe7vJe/TCurwUgvGW/NSOhS0iZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711687697; c=relaxed/simple;
	bh=d2ocVzl6oH9+3aAvYAELwlmdHTA1TpmvVRr404IVmJk=;
	h=To:Subject:From:Message-Id:Date; b=l5HgU3XBCZfh+AHsQXseduC8Q8dBMem+aOa2HuWZ8Tp1mM1+bUyGgyGx2ZIz+BTAjsSHiLbgwJEHlCf6KJyAZdzHQ/Q+jLEQuEV9rLC1sZt3Btvi1DE+MyPsI9X46wHEH+CfUcrOLo4nfu3E9RPcaUctHXiwEzKPzojJWhxiC9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZltpjx0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZltpjx0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F010C433F1
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711687696;
	bh=d2ocVzl6oH9+3aAvYAELwlmdHTA1TpmvVRr404IVmJk=;
	h=To:Subject:From:Date:From;
	b=GZltpjx0XZZ5uEc690FI2jCofq5EQVduT0UscYIGJAZXBaYBiyUTMp6QkhwrjJuvK
	 8b8zin/orEvlbdmcedY7JRetu+Vag2hRBUwL3Luo6mZeH7G2jMOVbNDqRKlOZQQbj/
	 cLUpLKs2s+QhLIpqXwDe3aP/IKDB5HNR2cP4iFK3Rtm1L6TKGED+uFZmB2PieU81NM
	 ubPWNmMnWaBjsVK34ARVKJSnbNx41OfVXXqnwcwB1CvrEAJzOPaolNbay/4eT//Aw+
	 O472y1y4ScNd5pE6+OGsr8eZE04MSIR+SV5J+kSI7kcvFYifCJ6XdEzRrXCjVAhbP+
	 46jw4YD6rU+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75EE1CD1283
	for <ddprobe@lists.linux.dev>; Fri, 29 Mar 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171168769647.13242.13893291711635059381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c839462599c1650ea699510449e8bc7ce205bd4ebb308d97c5d99e1b587c71
Date: Fri, 29 Mar 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711687696
