Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8C81A275
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776039454; cv=none; b=enz9Nn92YhnCc/X8K9zsvWcIjNLutvNI4rIAjwHJR+AqCEO1i9FXyIuWL0Z+GjpBYZzj1q0+iz2LzpBE7TaO+O9VTQQRYed+gpgtRIQu5Vms4Xrjq7D8fOvG5FIj6tWxXEDWpcbPalMbRGwvPSjZyBjuJP2Kr8LVGncV4KmNQ6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776039454; c=relaxed/simple;
	bh=/z1y5h3nXtE2JkWnDLOEWGMhRpLGQAwNkG4Xeb4PiXM=;
	h=To:Subject:From:Message-Id:Date; b=YT6rT65caUWTMDySCFrx+xubbjXhVKq2L4B+m0m9Un3TWoLuOC0j8/EsP298tZFSeiqr69dTtoGT2LC7bkvmfQQlzhVcbqdfgjradku5w/Wv8wG0lgx7zQTQ1l3HP3bx7sjLoFdTezmJmIr6j6EmYGYPyYXQfoi8s81T3CFDaWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JMq39B7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JMq39B7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE4BC19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776039453;
	bh=/z1y5h3nXtE2JkWnDLOEWGMhRpLGQAwNkG4Xeb4PiXM=;
	h=To:Subject:From:Date:From;
	b=JMq39B7FU4rd/XoS9pO/HlR0EiZnYhtxb+xujcW6CVvpSzF+euipsl+WGDKtVUwFe
	 X0Gqgj9aqzNHw75qP+XFaHuMgx4T90obxGAqBUclROKTXUZru34WEk+JHW6K5z4N0j
	 fm7QlLjZym6JVDR/xJvZCKwW3gECSVxkf6hHMUQEIRs9LY+4koUE28Ur77QsMEWRZy
	 fCqQJo63OJMmvJsfBY1iFwt6qK4F6Z/cRArdiw+XWn6Uu+4Sq/wgNedDBABG9wrnCE
	 7XBPAMo12FBY/RyzVdBFy+nCpayfk1kwvY+rkOe57bxAjcnBBobP2iSDyqbzXLAQCM
	 pNIzUnzKmkp6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF11BE93808
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 00:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603945368.19907.5681786253128021331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55226dbff2923be80917868f297494dad40340b57848ce20cc2dd2885b71c2e
Date: Mon, 13 Apr 2026 00:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776039453
