Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4149817E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 04:02:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E08C1C433D2
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 04:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681185725;
	bh=YJa0dcgs0n5trO88b/R/ZPt1QXMjYmYv3gXgTh8TW4g=;
	h=To:Subject:From:Date:From;
	b=H2/EoPbrtBucfFhMZfuUvYVsLJwsNo7RLr/yndCdhyC6ujNMVT7N6ffZfSKjyB/tG
	 X1s+58iCaBP33xlBMDE4RjgUZRWOt0zrI8DezPehtl51bDU3iz0/HEaiFxIJt9+Gp6
	 J7tJ9X4ajCvX80udICRdSaTNuNVANZcnHdwIm45gLziSLgdGiQVAs/j8ZIuYUiyNwb
	 c50IimZIS/nUNp7dRfaOkcBXoAwHxYMdQtjvhYwQ1b2G1c6ZdYExniIxXF1L/p7aXT
	 WFyX9USCW5BvKceCiUWOLb3UlB6cC3Wg1qyWHTgclXVJKvj1gAfKcY8CGCTfgG4dmn
	 RamBvpm7t8o9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2161C7619A
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 04:02:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168118572578.19436.18031247180322053170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b16bd6778e398ea5e01e1ed074da974799dbc9bbeb957e52511a83b87891af8
Date: Tue, 11 Apr 2023 04:02:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681185725
