Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F193218ABA
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750762794; cv=none; b=UfnknsAykSuftVPEhLjXBFgtEnV4qadDz4KxdmxqOPgSfLOXM8kp1glTeT3rYBGauu0O6bp9X0jxzQbWtVIvtInqQ/gXrlwoj0OwOIxajfJq0h8KEaELfy4x8Jk/k6CJT2DGmW/T5oG1VOJZpDLdFpfJ0sRka85fsq1p6Zi2nMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750762794; c=relaxed/simple;
	bh=+cs00kEjEUWp/ZM7lCcjNpeIepzsHhaN50RNadW35b4=;
	h=To:Subject:From:Message-Id:Date; b=YTRFh4Q9QpwSsYvU4XN3y7YsFp2JmVGJUgbdeI0xIyFEbbKL34Wogm9zy86qosLzLLVu8vd/17C8NuQK9RIH7qNBh0M7WJ2WO9wPRgpiKiabwdlc7EQNDLqZS+BSxKiIP8lFMjR1I4Cett0WqcFnu92oFQX9zX21JLgdQC0IVeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRWv7eYg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRWv7eYg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2743C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750762793;
	bh=+cs00kEjEUWp/ZM7lCcjNpeIepzsHhaN50RNadW35b4=;
	h=To:Subject:From:Date:From;
	b=rRWv7eYgA8WXNOel5texVW3QmpExryI/pel/aIYneD8NI/BB3tlW+XCzM9I2ZMsFi
	 z7wgI+NYDpyY4P/0dy1Cu33tTkNC5++ZM+5q/CzdBVP6nwOZtkA04shr0H75mMsLuy
	 O/tt/3468ztNUN0X+KaMGr1fKqvbEQtgA0/Q/qAvxwh2N36iM4DW+tpirYYmiWWeDz
	 oc47upyiCxYQ0DbvBgeNQUgFwF97U5qfIBelXjAa5q0VQx6ht73n4yGhw1/2VafCGD
	 1djAT+CmldPPqiDzMKIRMac97+xI+DzjhapsWiIpEe38ZzCtnXiNwpDcnSKUHJ5p15
	 urofrrFMD4c4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9176EC77B7F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175076279357.8031.1134997747574449555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a544a1b9c30ee00f9f9d578ffcc88447f1fb16dcb879655df22e20fc2ff6bc7d
Date: Tue, 24 Jun 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750762793
