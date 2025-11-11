Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223CE29AB00
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762902594; cv=none; b=HmhWBF96j26GBIDC0JaHrkV0rsI4r86TJZOFjZLqZ9OIuAlKY5ksvkfUFoncuNko9mz9qca7SPVYtop0o/+dw/a72p8kTECn2FQGVY8ucWi2/O3My9gP9mmUqZN7C8u6PMRARABYPw+jc9FHg+bgOaEj+MIKeJCGi2Zw0Nq5AU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762902594; c=relaxed/simple;
	bh=di+Pbr4u5U/4mvv5BNg/DRuMaZ90+Dh3Cjf50OM/6wU=;
	h=To:Subject:From:Message-Id:Date; b=KsZucpUGSTfQmA5KYEIg2Zsp85nU4v7idq5BAhlBJpxzQsWkp79NRyKEeCBK/yL+uQXFSR1GYgAkrDdiSAQHCDEeooxE+f2uD5J9bysTJ8bBHoIG30nT3On3Qao0k1B24UodYyqjONfi2sC7B54NC38ksr/BBYvFHY9rJbil8E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cw3/dDJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cw3/dDJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64AFC19424
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762902593;
	bh=di+Pbr4u5U/4mvv5BNg/DRuMaZ90+Dh3Cjf50OM/6wU=;
	h=To:Subject:From:Date:From;
	b=Cw3/dDJEUL2v/OTwhH1BlyITk00fHVZaXJbMBkuElkRRvNIJgZCbHD8lpuUr/IScy
	 lAWyQz6+KCfckPQfnJEHeEOOeiKA44yznd3tG3UPBgl8tfFKhIEvHh1fbOrE6BOovM
	 oj6ZmoDtFyxVHY4R3/qI5Blwo+D8MghnCeAfxZ7xceqIqyDeWpW8qhC87THByhJ5Bf
	 0o0lwNoU5D2i+Q9BIeV9+V79PkEYdwuRDSy0MPWxE8SxBwuutniyKiDoshqZzw/jLf
	 srg/OakTMgzZtYc7zn0uNw5EmQL2JeL+JJgGE60B0gMIiGQHGad6oSXXKvHNdBmMiv
	 GeLwBMEnmP8HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF64CCFA18
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176290259358.8560.5432340573253305876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74206011be53b87fda1659b7dd012e4387aff7ce2593bc8397f42cf31f769333
Date: Tue, 11 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762902593
