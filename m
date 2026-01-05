Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9C2302CBA
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767605033; cv=none; b=gGec4DgFjz6Dk2PQghJ9LbICu2aIRVtNzlXHlif4euKWPha7Xn11IwEOgqT1eRFgT13aRO28ZRgmcwkS71Ocn+8i9IgPWDSKyPnFdxKiIqtT45nRRGr79IA8VyTV3vFnW1lGpVkCE5rOV649sWqmiq16dX0pfWLjxQ7JlsLKUOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767605033; c=relaxed/simple;
	bh=PNYApxv9jAl+syNbGJc+7BTGN2f+taVn1x2mWFkdjRw=;
	h=To:Subject:From:Message-Id:Date; b=guHKhAe94o+ffhUKAbkACjKfnP5k8g3B7B83pcSCMb0ptboVn5GEplbhh2RlyosdnuES+Y5lR4XAm/EboLt6vWklY8qSAvYeNrpGdyLB2LUXfbV44uv7SsN9iZ4FnQFtHryMTkcdRX3XczBA1/U8z4Djc/azhIIecB8EIe3XQhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8rvV+5E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d8rvV+5E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34A1C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767605033;
	bh=PNYApxv9jAl+syNbGJc+7BTGN2f+taVn1x2mWFkdjRw=;
	h=To:Subject:From:Date:From;
	b=d8rvV+5Eio2GVGd6Bd1Boz56cvaLE9IAguvM9sauh2VMEF7OGm3URukeWpAVi48Mr
	 UQcHyHVTifsAgkkppDYErgxuKvoIBpwNRGN75oDErscEHRiM6Qau1PYIq1eJYP9OrF
	 ZcQfCttsmERxsLlV/Ky56z61OW6dXf/GWXEf/PDfKQ0iEVjuiPgVP4I81iPoFH8Yiu
	 2jtPdisl08QMK832F3Ax84lNI+OleKajYJbRNzB0Am0kxawizXsmaVwUVjKyHranr/
	 yzz0Gqtgk8qtDEqvGgXfKSkkn1Mrb6Mzrk7imOq2ak9r1fsvq+VBsl1piSbDufBKrU
	 LeEH2b2C7UXmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 941A8C2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 09:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176760503359.6136.10724198505352705863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4657d29d3f7ecac55df8d163ec759997b649144c98d16184eb941aacc66bec56
Date: Mon, 05 Jan 2026 09:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767605033
