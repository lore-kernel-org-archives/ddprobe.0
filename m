Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396EC2417EF
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744691995; cv=none; b=jRoYJfEooYBHAHh0JK2KlByfEXk8qT/qVE3/C2d/y4hujz8PfXIyQl2uXROybTZSqP3V2l4dhPvGhxN9nsvb+mDFO0l6xUIJ8X3NwcZU2d6vrEgaUCOBj2MEnKt6UBx/tyCWc6aDOIWB5aiX+/cYg/h9IVwXVVC9ZbLXnssGdIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744691995; c=relaxed/simple;
	bh=cqIDMhMfarh9EAEpEtg2HEYPcFv74/AdryXAWwXQGTg=;
	h=To:Subject:From:Message-Id:Date; b=a8E3izDbhpskXEbdQjI4qCju6kMiQjzAhAXIZlskyXPq59111FujlDIDJoN/QqE9pEaRofkUPJKFdMTra7F7yEX6XlX33sdf3VooQ4VsOakVO/qHx9sR8moXWch4wlk7DQFZOqA35VD8jhXvfKsytAzTGLa9ONCODtNwuy8wS4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9fNoOPZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n9fNoOPZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05CBC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744691993;
	bh=cqIDMhMfarh9EAEpEtg2HEYPcFv74/AdryXAWwXQGTg=;
	h=To:Subject:From:Date:From;
	b=n9fNoOPZPTve3+lnJSsABQbl0HBmwPqVQtRZDOqNsPG0XDkShRc1/Bxr+oMt9nuuM
	 GeVwTgi6lpo6LrlKpmSwio3muerBgwm62pTgg12/+lwgRGDkytfL1wcugs/cB9/dX0
	 VTcWBh6xRwlj+KCxiNI5SzvU19EznQxDrSJUnzZI8dBck1gzzguMBBnO4nDcUnKcOo
	 IqCJtxJZeRf/HR/AOTYJR4fLE85JfI/srCXP5pNqCWOVzGJzbRbvgvOyFi0RsLY+Ew
	 Se5fR2usnq4Zk0waXwsDQEkZ4UAYJWia4oCRsEGGOJHCgvLIO0vURuaqVzc9sqFVGv
	 OeEUCKXRBpb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B32CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174469199362.22106.14965216408665201926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b639a50ddce2ea2136f297b1efc15776c7c25d4030163597ccc107d7617e30ae
Date: Tue, 15 Apr 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744691993
