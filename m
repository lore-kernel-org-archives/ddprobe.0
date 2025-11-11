Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A788460
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762819794; cv=none; b=i5VaEXQ2YL3QLL0lGxRyXVdS5/YEnukcGkDXT6h6EC+kpyYKvXcbz2oENyC2QRB0o7hYUjAyh6ffLSrmcPSVC94YNFbwkVFBrQo6iYVU+y6IdQxJI5odJ40yg9MCZQQxiAYc0ypQXTaqkBdulFxsb5rvzKvgZLXYsyRkr1Nqge8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762819794; c=relaxed/simple;
	bh=4dIYvsP8GVYSTlVkKxvFDzrCNAQukb589MSQMZdFsK8=;
	h=To:Subject:From:Message-Id:Date; b=DwGcPF+rxjzNDlFyGUQYNDw6anTKl7vwV6aXSwlN/bSInOujYHkpUf06jYI8sFDkxilr33jsgXx1iZ+PuTV8hF0rIes4gPjGxXbii0CfLhnmk+6+pJ7F4XvoSFDz8M0JGKygpFilfL0moHkn2CBo+HfBXRBP67PZT4uZUsyfC68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uyex5eE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uyex5eE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C20C19425
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762819793;
	bh=4dIYvsP8GVYSTlVkKxvFDzrCNAQukb589MSQMZdFsK8=;
	h=To:Subject:From:Date:From;
	b=Uyex5eE6iXuNa6VijZJIjHXnk1R+//XqYju4mMQkAc2rxw3ohzrR0FXzaZdz779Ke
	 JkrO6qxadbIUDe9k0RhOSJMJdqgEndR5zgSQZVYU9Nips1+Ws7Ym/HgriHl53e6M2r
	 fm0EHQZTcWNcVf6GeZkow9UC7hPpW1fHulUiMAsMZGuibGx+DIPJnZqznfLzJ7nRR8
	 +1J9hu1b40ZsP26quRMjMspf28vQYEaj0CdmLhBa60wmX77eer3ia06YrvqUAJM6yK
	 V9AwO8+/uFe82kA8XkmcGpNFLTmADRJe+veeC9+v4K4HqNWtFmQL8Px5e6pYvHwYq/
	 FHLW5s0+cw2IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC6CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281979358.14356.894904329195038597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639f561f9f406adbd5a4cdd9419866695d072f065a921b2df050c705ad921a2b
Date: Tue, 11 Nov 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762819793
