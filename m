Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF722BAF9
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742996994; cv=none; b=FCnAHdybb4qsXFQ2QAIbDKDX3vAN5aGxGpMzM8rlDgs1ycal/xOiY8mJzQ9hLAalYYiqs4Hf2gdyd1TKOvaSItbXdqmyxTwZoLZVpb5m3XCyp6XhoIs3u4Y1K3yW1TTpLmPTyJVWH4R3SeLRQCRq5AubCWRHaKAThQZVeqUH6d0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742996994; c=relaxed/simple;
	bh=8qWjVNRxqxIN8ORHgOvFKAG8bPbfTlHsFV4UpteCWPU=;
	h=To:Subject:From:Message-Id:Date; b=tURJiCnljC5NgUD9xgvlG+3M0nGlFU9eLdfBgzpXxTmwVQ3KZQMEn7ilZpKZ2dDTlXmDqaOsBVKgUx5GcjRo4NfgU+TIhsx/V/oU0Vx8xTw2rkkGExkyRVRA6Ndyod8lDkWfD19XG0iOUtcyPz3NbhYqGeMMU044IXk13uXcmnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoOtJqhc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoOtJqhc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6510C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742996993;
	bh=8qWjVNRxqxIN8ORHgOvFKAG8bPbfTlHsFV4UpteCWPU=;
	h=To:Subject:From:Date:From;
	b=BoOtJqhcqq/UoH91CfkETL/EWz/tYvDIsmuezaZSXtvOsYVgrPU9CbKZ1c5/2T0dL
	 2waiejumC+VcPJwFEEuVATkItEoOH9h/ytZnOeTXyJfh7Xgin4P8C9OClVuOYJQr3p
	 1ioPutA0wpP5yYvZto6MBp9futUYSG0savbjAq0BZDiMGcJegUx0bzoL6AbTITgEqr
	 dzky9VnCTqAqN6V6Y8/EV6HZEg78mjtaotLasfkIJmAOmIdmaEeUa8eyWAUfoldjMe
	 KkZ0YSguf8bV6flX/sR3+BR6KLYaHV1fM452zT4MAoQsGtCv/3aOeAvecPJ+arx5YN
	 rRQWYP4BJo1EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95705C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299699360.14315.5872926480831269605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47b277d0f49566916331d1f97d37661077fa56b5fee973d2cd9555adf9d1da6
Date: Wed, 26 Mar 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742996993
