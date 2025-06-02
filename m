Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7F4E1531D5
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748855993; cv=none; b=pwDLWfnoVwqy4wbCblpB5cIWfEDq0BubIY0kDluIQ/wkiWQVBMaf2+sYTjOEQV2eMJsGFFPzs7ILDrJlvugCl/+aUMmuR+sImW/kfRbwRzCiKhQQhWWrC2JAUj9/Dl3Y2rG/uKLifiEblC25j8IMAKBu1K6PNrfEmeYBWA8vl84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748855993; c=relaxed/simple;
	bh=nWjtImmt/83g/tDLXHYWo28MWLATrqwADXIsnSNiwoI=;
	h=To:Subject:From:Message-Id:Date; b=QTVpBqEpAHQB2+fw6FXkjczeadTthluRa1avyXc8xIexrrksQGOsWWnPayl9Ixorcl42qpt3rIqH1yFt0oHKDfRgxdXT+a1qMB5zaOv7stOxA/MP5Fpih+yxoboFHdb7u3bAXhtfDYv4YsAF2u9ebo2o8KUeH8txkICgVw8BjxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hktZkVaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hktZkVaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A0C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748855993;
	bh=nWjtImmt/83g/tDLXHYWo28MWLATrqwADXIsnSNiwoI=;
	h=To:Subject:From:Date:From;
	b=hktZkVaH8XjxQMTIKb0fqmtL7UpQ/TDoQ0ud1idkdcxHHTeu5q7UVAvec+jnQYxw/
	 qTlrQ9YUJ7kzCe8RNW7oCmJCZzXtbWm0RaaXFpNvAuqs0oE25Ax5t/oqbhIpagQBJ8
	 IjubP8vq8nnEMccT83cdyrnSCZSlTFqzBHzB29tLgMtE9fKWKqNfv1VITZR6a9LZWN
	 vBxR+PtAPrUo9RHVoqmJMCsIBOumRu6Uw+wmUj+zvJy1YLxcpVhR7WxJEhgCF5gQW6
	 NoY5CNUy+WwbpvW89NH7/T4qbNTGudNKlZiD8m6/iij8Z/weQkNZA6jWK11o9lxM5L
	 O01LD0gI5LX6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA2C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174885599358.30777.6836070040562564995.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41efd77d2b27260904705993cba3537af8cefdc1e7492c5955d980adf36b083f
Date: Mon, 02 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748855993
