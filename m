Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2048D1DF248
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774308894; cv=none; b=kTWkxHOF8QPHDUSNzIPSU7SM/GBIO4qwiQWqy81i+I7Rf5Yijxbj+C3amHDbAFQjqk2zrg9B5Ro1Oli5aoB/OJnTuHp5Z/h0dp6SziMAZCijjz/LUXJtX1Foz8iar9mzs2EYs/OPF/WR8ca07Oupn5OGC39ix1I3zcXJo+Ky/Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774308894; c=relaxed/simple;
	bh=Dh8UJ1CINeUKTidG8U7FoGhsGZb4NMpiHg6ITyD7gm0=;
	h=To:Subject:From:Message-Id:Date; b=cBX5xuFAzyv3PJMsIxsoHHXRw9LPM5pLZ/pLZ3uk/vHb2BTfq7cXb6MwcbQplF3bLXWk6ZOA09CsxNFZJKYYtSK25OY498gI7/3cJwvEnWDQvUsp9RHfA1+p6QH4+GahiN7nMSXgUd1dGsHx+4qcTeRG8t5PsamH7C8zqbPko7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUty5R6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUty5R6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74C3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774308893;
	bh=Dh8UJ1CINeUKTidG8U7FoGhsGZb4NMpiHg6ITyD7gm0=;
	h=To:Subject:From:Date:From;
	b=fUty5R6FS0VTlFv7N9XdkUnJbsuhs2ZwejzwdYfpIR8OcERGzYcVUNB1hz7RdDsUx
	 U25xLB5jfnJIMjVgiXAOmeZ9jzdy4a5/FPDTFDl+AfsxkYo3pBHIOBNz6tWfgjLWS+
	 lDn7+wIHqC6hppd/GUq1u7oZ5cvSPptOyDvAdutdnaSr6GPk6WIi59/wwMZLV1wA+A
	 AWT1NMPySXeLVbphxki8GhEEpuZG/d62aysyNfCAcebXCevDfIHJMIbUbLU5TG0zQv
	 u6LQpWwQQIOeO4MqE6FUVP93zGwERrwATvbX052XUSoX8iVd8tr8NmaTzBaJsbZmnY
	 tmqbRCe1RRrmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D3FFC72C5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430889363.29364.13978729079317948270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dc8d2fc163b46a0c40a095d13bc777356415a59326c419066de631c8fe83456
Date: Mon, 23 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774308893
