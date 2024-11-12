Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3A9520ADFC
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731406553; cv=none; b=huxCbS8aZI/B54/VOcr+29RHUNhc4vU6bC7XFlGarFvqxK0ZLuaXbIQPXY1AGZdK+83FYmn2PI/20eFuO48OBVmdqt/2PNSK4cGgRdqLjehBoH6+x/VzAwyHWSS2V81r4pT8akARfQSf27xSBFO0eRJ4UcA3fb02KwyD6mJjKco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731406553; c=relaxed/simple;
	bh=Tq6td+VAaHpxz2vcZNH18iNRL8GxTf4neMFQfFBXYLo=;
	h=To:Subject:From:Message-Id:Date; b=tCUbV2ubyOrLmCsZx+WofcnOIFjxG9pTW6BCQoirbkjJZpcsaImq46nlhGywsb+HJe5t/m7+coDZjRwKRzEVyTI7g2MSnNRbst9XjwoYgYjA5/F8X4oH1AHeyv5qR7IjepP7yPncN7XNZ1qLMlT4CGKW3ozy652HA8lAzNhZ4jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFg5FWSX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFg5FWSX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2825C4CECD
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731406553;
	bh=Tq6td+VAaHpxz2vcZNH18iNRL8GxTf4neMFQfFBXYLo=;
	h=To:Subject:From:Date:From;
	b=dFg5FWSXjOkm3ZwFE7jw2D9EWLU8lIQz7Exicueu/oJSgf+m6Y9L9HJfe0SDin5np
	 O16I48jT5N0QlPmmVkf0Uy2YAGAE8TKlmEywtP9nXU56kSJqnZ0R8EQevMcLCWcd6h
	 K6v530BiupAFycie8n//uaQOJzjh0u6DsPCbPLICnfHmYAhMz68auLQneOXlJIbwb5
	 +kDVKYMETzFn4/DOsfLcEfM0Ey2rEZH51TANKsbmxBBya+V29LkA2i39DpkCo9e63y
	 MPgOvmdTBPhVFbqNEmUhFRkZYAbaaRfRat00FhAcnl6M52fHJIEwcXFg4/bgmWZ/RB
	 2MLYv6+tSTe3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92270D32D84
	for <ddprobe@lists.linux.dev>; Tue, 12 Nov 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173140655359.8977.12074546434437344583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09f87efa52713bb455d57cb1e4875dd9473804b74dc986a2924ebf86607e523
Date: Tue, 12 Nov 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731406553
