Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53687A23
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738984555; cv=none; b=fldxTCvv8hR4HgOu+207atMll7pwARm6MJSz0qxWYw08P+qQnPDWFCuYjMAjH+9CxWNnS0SV1TLft8wstxX8YHBl1aoLHDl1O2m6Ro7zXomLX1aQjdB0+wAho00RAlFKGpu0KAN1WIIcVszI00kW2pwCnG+G6Xomj4HJTb5Rn74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738984555; c=relaxed/simple;
	bh=/Xvb/Eyjl0sH4oMQWD3u/UvqD3t3jYdOYBI7EjTNK9g=;
	h=To:Subject:From:Message-Id:Date; b=nhbP0zQfjrrUY9BuzzV+KXrLplXPuKfAsaa3mL9AXy4dKR1QE/+ybxUJpyLpDhbyHGLGgANJ2xUuP9GBZWwOEMRl/qtSgZ41ulhpETqpHs/FO72QoxMKACvxW5F9Gr9ROb9INYmqIkTx0utgH8soJD/X6C0FwQf237jeiMqcQ70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhTPd7Kc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhTPd7Kc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4E78C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738984553;
	bh=/Xvb/Eyjl0sH4oMQWD3u/UvqD3t3jYdOYBI7EjTNK9g=;
	h=To:Subject:From:Date:From;
	b=RhTPd7KcC/ex9Ef+svGLvbvimI2Cw9cgN9yLcJRz7SoMyvCqjrtSSJm0MuZCsmab6
	 jp59BazGSB+gTH3MKo+chK3ZdrMee9S3WbFwa+Sn1z5ojfJwPssIaiAyPBdmzsq71Z
	 wA4uFChMn/QNCfKHxTu2e3S8d1FQdAhtlZPoIsp1Y/FQ0/DLmXCnsaurNhW+NGpL9Y
	 SnICpDsUE0osiW71sXzitML5gNd6lOwc8UEDqI8bFMYqkkOXHgyD8eSbkCjzbXdCss
	 L5/cgYtlzb9ca+zF0pr+rkmav/61IzMEWQ7bak76XdFjHT6RGvLY/CKJiv/rEma5SU
	 N+Xh3orI6f9yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C316C02199
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898455362.28682.4829120254030726270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a47a98cce0bff4ae2de40eea1fbd7bcdc55143ad156676ce086677017ff2ae97
Date: Sat, 08 Feb 2025 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738984553
