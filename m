Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8C94A3E
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736044554; cv=none; b=AQdjzy+kjFyUtvvNkF/HIMFNEDDXD58HqCg2V/mRKnBVJ/d5iM6adCLD6xHB67mLDY+ujdblSsClHz1ZuWL3QnWeYRZ1WSNIRAugzORbOyFxUU2gp0c7fuQZnJdDkkXmcCnJFA8yuawX+Yrj9/oSiCGQvW9IcLZXr7Veg1DcMSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736044554; c=relaxed/simple;
	bh=TA/L3znpSjsUIooDEPCzxHNAMls45Nm+Ra0gfKhHy8s=;
	h=To:Subject:From:Message-Id:Date; b=NZBfyX5M6VHlxm12xQLfRvUXI7eFmzvPkbdqPKw2L93fo+svi3AYMPMB5bK91zxxrn5cr35EUl//nGVJ3OGunQ44cqX6+FNHJ7ixdylUINXmTQ3/SLfw0ViZeKmLzikzwndJir8eg/ztEe/KVO6dfCf8+a3Z8MQkLv53yAQH2u8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WtjFhG/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WtjFhG/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE59EC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736044553;
	bh=TA/L3znpSjsUIooDEPCzxHNAMls45Nm+Ra0gfKhHy8s=;
	h=To:Subject:From:Date:From;
	b=WtjFhG/y6Xo4TwDbSTMkqbq9Woy4qHdt1CtlZh5lUAuYr9lU/9bIbWwocJfLIu9N+
	 RpdjkclKnk/FqjVQ+Y5V9S1CZ2PK7JCj5rfeHMb75tOd0mx9+fZxXtXwqjyU6RNuPE
	 1Xna7kkyOO7+UJHzpX9pfzL9eZTQcKd1sAjoQyWhv25oSQkdqfIzJU6QI8Z0ivMaHG
	 ZUvVmzTGIK2YsbUWkIYXO4T7hWlqOCItTF9Kcy+ZPNCZTGqRBL0EPcQpCbq98pUsf4
	 Qx44aSnOWdjDRVYoQb8UfaXfqDwDH/rIcAtstQq5lsVSfSaubEx552HZZJqeGSfkVs
	 g/Ule/G2vt4wQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939EAE77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604455357.28878.11646980898982132359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c8835b9261f7d13fa56bed65103dec89a2d030924fd49cb32d09610ba02c83
Date: Sun, 05 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736044553
