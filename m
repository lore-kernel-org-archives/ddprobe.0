Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313541E49F
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767222234; cv=none; b=DSbG0bfitTC96T7OzLcRuGH0PV8OnbL0VAG4BadW4xfCOEONXH16wjp/8cfjQmDtStMKMqQnr4HMFNZ0qvfqYHhH41+5vAYjmWlWdP444ThJCe1P0lSaYDh8ymwk+jYv4Kzrg06fc/pMJpbr3GB4O31PjiR1aMT/shSqdl5ZhuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767222234; c=relaxed/simple;
	bh=TqP61H6r21VnnhYU81I2TfQg2ZrAtcBEkWmduGdcwiI=;
	h=To:Subject:From:Message-Id:Date; b=kO9q0xKVIrUR6ogeMwXyyCWyZp1Rd9DHyOqKwsL8yZ+i6efPtSQTOungVbumHNP6cH/2mWvVarxkf8egQQTpF6C+ofLai4YuC8yw//p7v2+mRHAGZg9t5jJ8S1dNSorPk+ZMwnx8IXNzTycqQ7GOoLrpmhZHpLfG4KmM6ovaFe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us3Rh1ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us3Rh1ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69D1C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767222233;
	bh=TqP61H6r21VnnhYU81I2TfQg2ZrAtcBEkWmduGdcwiI=;
	h=To:Subject:From:Date:From;
	b=Us3Rh1aeUieaS/5mD7fRd+aTMT6/BW3cKEemAp+418OavjqzaNI+Xcgk+t6a/lX0M
	 GhjwwZCG6XTLf1eqX1P4+PXYMs5GHMvFoXDp0/OASiKWvAPHTq2YgdopayZ/tdrVJf
	 ++YdXHWVD4+3Ny+DbpCEcwC/Ce+FS+WP+Gye8RvA0D4WDvSLEpJJ27aZHh3wp6vmKu
	 Z9KVZl8ty19lp74eEPUwyO/Bz3XI/V4xJz0pLQhGoGxF/FZheOClBYe0kCMkGgMg9T
	 m4wlnRQWn54+hkk3xYw3RMNjpBnyJwIsV8ascnwmAb3QQ2hkfsRtq/+H+l+C/PgwpZ
	 wmk8tvF9Ihq6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9537BEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176722223357.659.17219592204796236196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9347fff8ebe1a2d8c1b6fd179ae750855091bf8c66f372f10c6e12d39ed3b77c
Date: Wed, 31 Dec 2025 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767222233
