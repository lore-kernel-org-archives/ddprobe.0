Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C058F227BB9
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769566433; cv=none; b=qYPQxL92aHJyV4gt97Nmc85tXOfHrxwI/r+rfhGF/1eeUYdQ95rc6/nSfrHG94PDNwU1cM/2SdNCZb2JkZOKPqYfnIY4A7lPzeUI1mShs1CmfiO1Q9DDq2vyVE+ltovmVvdUNTpNNHK5gblrG059DZS7mHwzNOaSYQnSiPIfBcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769566433; c=relaxed/simple;
	bh=XYQJxRXu/FWM1FWYp+TqYnKjhBw2Kc1BAJqI3XkQVGI=;
	h=To:Subject:From:Message-Id:Date; b=Y+5J+SjLmBGxEsVoK3ZOAH1RgZ6BEPw+8W4vYDdthjOrgY7COE/VdzDo5HhSMjWpKA/XQS1SWWvQQseCxKEv3eRPiz/2hrHr1d7Xxz0o3TPqOhDDJ2VKLr8s7sRSZoHAMNp2FUmlMnHxG8NxPCp6Q4wpDRUtwsK9j/uIBuq1BVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmYDcSST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmYDcSST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2357C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769566433;
	bh=XYQJxRXu/FWM1FWYp+TqYnKjhBw2Kc1BAJqI3XkQVGI=;
	h=To:Subject:From:Date:From;
	b=WmYDcSSTLBEe2GvbXiTAv8xJNvp5HI1EZn0LKUiP3pFnqdFC+aLUDuljnpi6fplj5
	 sNhgeZuAlQbFu2yuMb2nCmacefen9HqF1DaQctvlPXI1ztHS2Geb7qUquXO3IW/mNx
	 5y2rfSwEACUUNza46B5Wfek97OCqfkoM0TfvU2bYH3BmALzX91MfZLucrnAA/1Gkc8
	 bNhsNl4IeVIsTBYqbv5sDu+1VDZarD2LvOVaHvA1zKgSXPj8oQy9aYmbTN+pStZcZg
	 WWFAmQSlpt8GS7O22mojLgE1lt2837bc2ZSCoEQrfiAxpIR6ysxhqsnR9V4QBwEpy2
	 U3ldJzeN0KzsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90AC7D35665
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176956643358.9414.9214574665188508948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9f1abf333549997743208a978b5d7c72094a5872d3a4a9a91a4eccc1c9bd4a
Date: Wed, 28 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769566433
