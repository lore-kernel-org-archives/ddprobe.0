Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292152F531A
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759918194; cv=none; b=TGMGRQOoh6WtFru14KPz2RY3OcRtNdrPBeEs1+hh9hAvh/ClEld+Z/6L4h5A/9vEDPQQAjRa3lQ7z9cah8SJ/k1C7YQWeXoE2NI2ZkeJPcQQAMHzdlDAdV/CkZHFyFi2SqxzWqKmt8EbcJqaI/LedNVOjvF5kj+JDDrBBYxGKk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759918194; c=relaxed/simple;
	bh=1uCLZQ2yVLGH1s80uUkgJuC6FWb4vttOQfC/zPpkP/w=;
	h=To:Subject:From:Message-Id:Date; b=UVpbiroevzQ/0SshwCFHgNQSS9seU5X+X/pcy4/7XPVYHCAjlk1oBVLrwX7WwlsMoNRrbkZUW2Axe0BK2Zg33apqLAhxLC7hCTe3bTiz9Vy4hLG79R02ITQHFK5oKKQjqZj7Wo9jDoM3dGy8qMSyVbzpxgEdgntDtlqSI1sRO18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XhXH5AXT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XhXH5AXT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B574BC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759918193;
	bh=1uCLZQ2yVLGH1s80uUkgJuC6FWb4vttOQfC/zPpkP/w=;
	h=To:Subject:From:Date:From;
	b=XhXH5AXTcVci6/lVIpIVU7nAtjhuGQvQCUUVc/4bubaF9ZShbiU15BJ2ybaJZsBx2
	 0obWhhoZPkNRGAxpUOR+avjBoMYQ7VUhXGExFEKvgQvE7K6ZrhssUuafAGDK6v+dGG
	 nsI6Lhf2I3mZnDegTJcgSKKaeKnTUmB9EigOflidpaL0DPJEM1ofTh+zV3jT0jv7i7
	 QeQTkGXt8QOOYEY1ikY2th7Ww3CHgW+wuQP0pkSeaTGWt9wbRy7cv2MOcxO91jOsnc
	 5tJLA5iwcolVS94iFXy9WHomKjsuzMVC2aFAz1lzJ/xAipSzd1r6XyPdtqdi5e9b3D
	 DkLQUZ0m0B0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A23B1CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991819365.26166.7898067250578622223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 047359dbc7a07030c84f5c71222dc2746792d44421e69df49309114d8fc39fdc
Date: Wed, 08 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759918193
