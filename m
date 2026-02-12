Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF721223DFF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770917693; cv=none; b=FdsuWtph42fij4aiOdJRgMNwRoIJ6N/x5IgDJddf+zZ0YhG65xrQgzoukATNQywYlXQa3mBXhlZiLjzmBHwYze8L9jetouyRuLad5lkTLlHBMK7IT94cEelYJXHw3iKZa+1JU+Hk8mKXapwNZbW8NpBr+hH2yvnGpTOPhBSQn0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770917693; c=relaxed/simple;
	bh=j+3C5kshV821lciXnR/CDFFVavSAaTQK6WWy9tHEvI0=;
	h=To:Subject:From:Message-Id:Date; b=JxdV0MIBMCB03tAd7BJIleg9jKvJ7j88t0m0I/wM7W9b2FbEG08IJeIuQgXulP/Hxd00HtPXwZewlmjHNIZ2aOjWcGORSTOz5DRfvhbsLwMujfJVCYHmP4DpheApEk3cLGq+0aNMULQD5otvOwQ3aRyvkH/1dnslBV2LkqHmy3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aas4MdaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aas4MdaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1432C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770917693;
	bh=j+3C5kshV821lciXnR/CDFFVavSAaTQK6WWy9tHEvI0=;
	h=To:Subject:From:Date:From;
	b=Aas4MdaAPDS/4Lc/sYzwEKEyxPxaL996lanEpQhis0Mj5HJgV6bPzA2ya5rX0YQW/
	 yph2TprDXeV5gD+fTfPG24qXWmlAdrB1bZ72zDkynaNJ00EAn1o2OTZzrum3r1NSEw
	 mUYjj/91BKXbMqy74+0TIg7uTpQhg31fhO7R5ILWVScN1C6X+oCekFuYKrj0DZzWfm
	 qeln9FtZdtrgXy5hjm32fMbj2htvh9X71HgmvJO7n8pZI8+IHzcAwvlbAcnMHqHAuQ
	 9scVwpXZDCQ3WXtm7EOKAr5mQQGHI3AEOjxlHmGzEMASrLqHJNd33ZU97nc4iPVoXy
	 TKFY3siD2Edgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 982E3EE3698
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 17:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091769361.7817.5870645529364328356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60a9c9b2df7916853ebdaed5623a92374055ccc161b0dadb0de9a3e905ba48d5
Date: Thu, 12 Feb 2026 17:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770917693
