Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B9BD4A33
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768790034; cv=none; b=UqOcGTFtHXticWZz+6e+jlxz1X1nCxIInwqAFE+1TTRNmy+tU9Q4uCOoH8LleD9ncnzdbxi+ycUUvm13eZiXH+YneNROHnh0ruzK583UZisxQnvJVkt0tYVJRx4WWQZvtq5yjkAnGyMzZ21hrJq2WY2eCw0YLulWBHyWdqqOA6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768790034; c=relaxed/simple;
	bh=pRzR5p5UMOTRWp7MOBKKM2hbINuGKHyrkvZBHIyZhgo=;
	h=To:Subject:From:Message-Id:Date; b=tvUI8Qi2BN3L6qqvF9edI4DuauNYB0XiXCeWgbt1iop3iWdCNBJIvxc8ndOZe6cdUBeeYZ8WN1dtfqQx1VDk9L161rX+6lAXPb/Q8F2bbsLYqAzHJGzx6o+PkXo5YYkZkYPW23WdWOF6A7soe3Rz4Ds2SUpedViuvU/I3ZWxXvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzDq1B/G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzDq1B/G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE37C116D0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768790033;
	bh=pRzR5p5UMOTRWp7MOBKKM2hbINuGKHyrkvZBHIyZhgo=;
	h=To:Subject:From:Date:From;
	b=LzDq1B/GLpKtqFXd7S5oxnGaTfyt6UJAWKcYLUB/g1tk+kwhSOnmftGOWVrkpgFLl
	 E4U7CNTC4uVIFupfcuDnXIqH8/wEfHhk0rq2VLEJtNW18PizTkQHXsv5H/aotdQYmk
	 xlyp2s+/xzKx/gXOS9qCnBWDesJQslVyxCmH6aaIkd4X921uKfSx2vRTmSz49ogOcH
	 o5jmyHLn7geY6CkR9rjd7cCiQidxzw4EIQe6UOyX4L0ml7v4MjvbQZG0wYMZcwJzaZ
	 QXBRfe52u4ROHD7DqEMnBlv9eUAsMkX3/lmxDIxrb8ES+03EFeNx2MBnvJSWQf4BXd
	 XGSQHXzds980w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A55FC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 02:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879003360.12508.7053262222202733711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05c00fc12641a614870be4418ed8c73fb595486304145eb28bb4bd1cd122b075
Date: Mon, 19 Jan 2026 02:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768790033
