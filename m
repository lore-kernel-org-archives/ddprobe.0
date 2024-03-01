Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970B43CF5D
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709324896; cv=none; b=QmioPRPsO1l8xt8oLwoH4X60EqwwnR+xEAbidx6S53IIiL0G9CdELpHtPs3CSGL04llq6OXHrxdy8y0WLnVvUkVpxNno96xkuo5JDoURxebg+eml/Q8t07PxK3hszZh9RLbnwe8MLO+CCcEkHzSou43xKQyCoKTH70hCEjJ3q3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709324896; c=relaxed/simple;
	bh=iTbqIcw7U/x+HbP5sPgsB0JztVJpa7KmGx9W9RuUZ0k=;
	h=To:Subject:From:Message-Id:Date; b=LV7mF9A9j5iQpmGYbTSUeiOgIoZBHzxLxQbP0+ZLnj8gqBckxAZXf+mbv8tuH6UO/f9ZlhFV6t8EIslzBFRKO7hrJap34pkwJOEB3rDvvQo6eHhSQ8cebk4aONUEe6k0VyrTGpsWx2BoSUFp8k8p341/LGh2q2VWBv2+fWvH2uE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ne8z5QIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ne8z5QIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7466CC433C7
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709324896;
	bh=iTbqIcw7U/x+HbP5sPgsB0JztVJpa7KmGx9W9RuUZ0k=;
	h=To:Subject:From:Date:From;
	b=ne8z5QIcwh90EFPQTJkenwBa3kvAE8GzWLmwOVnU6Lzd5/4aUeFQbRMcn+nFOj/qN
	 SCRG3gzIyGcw88H8x2aefjGha+TNkFEYjZTAapZONqXugzW83mkNOiLXfT/1Dy3Qtk
	 6gq43VYev1q3OMrYg/fObbdW4Juw84g6Ov616SAdw4BbpzTvfimy7AcJAL0LKawFNS
	 nKQjVKYCrixHyJrNB9cX5qvTwE3pVfoOBHvZe6X9WGR8ykFAmZt3A6TWSKJt88YSQ0
	 uPgmAzQUU5kAepz1IvIXo9GKvC4Npu3w/pcIPUU6lIVyuTut5CH69DvX1sVvR56lZf
	 6QI7mNk+9EksA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C6F6C5475B
	for <ddprobe@lists.linux.dev>; Fri,  1 Mar 2024 20:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170932489637.20591.8851660075569667049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01ea431a6e567ee687e21caa157919455c47b42061926b68ea242634b1c59e1
Date: Fri, 01 Mar 2024 20:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709324896
