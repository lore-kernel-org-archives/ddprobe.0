Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ED8BA53
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735450554; cv=none; b=fYz6qE2dSxDwwKr2RI8XyA99ucEb5IlDIKkSX9cw7ygQHrZVp0+j6hN4x9T6EgO5GGMuiUj+kK0zz85XDXSjLjMY46di/K6lYccc2ig2NIokUB3azKhxhHiQvnS4VvIvTCuG1d6qE7t8EpBEj0UKzgz/ElLlxRGTbIj3pYuhhN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735450554; c=relaxed/simple;
	bh=8gDWMfj7oauoxvqhR0V/ChDWvkPm614ay3Pf3a+V9O0=;
	h=To:Subject:From:Message-Id:Date; b=NFOxIypm2hI9ta/U6v/fbZYwBzC/oOCT0MzdmS4zu7BLqHBMMv2VxsmT3paxuWFtmblcOakfsa6dNUAXISVsPjRPP5GCFw7YNvMMkQYLlmIEuaioi28JYs1rCWMKdsEukXh7Oxd3Ze0uecw40EMIfYwYTxHs4v8GGka+q9gvhXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLPMtkci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLPMtkci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5277C4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735450553;
	bh=8gDWMfj7oauoxvqhR0V/ChDWvkPm614ay3Pf3a+V9O0=;
	h=To:Subject:From:Date:From;
	b=iLPMtkci+A0+bIzvCHkyLHMcrZLgtZ6Reorgq5CC++jghWzJntOuQONDBgFbBU2Je
	 HckxpM7FbqSFQAuks6vdrOIU5uxlFdjLdyHCH0dWRxidE/Nxd/Xg7ejpykU+uZmWWK
	 W09GNWzKDCDAGF3Fl8S93OZeRRIdGM7GN3d0O3MWLVUqRuHIJapHu8M2KVg0WIKYGp
	 NfHERz/GSMghqxBYpv5SDT3+zeNn0vCQH6LwBRztc2/N6c6XB3W8UgWrQmr9Dwl+ZZ
	 5IJRiv1GoCsrt4rFC2He7PaPJJSsiMITKotfa6zmeIhUr5gl0ui/n3+QqK+1r/urT3
	 1SR8fUzgjnqQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE1EE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173545055357.19939.10357261235747120872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ece73e7a8adcc07f8d4dda887ea536551666065e619774939a47eacca048621b
Date: Sun, 29 Dec 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735450553
