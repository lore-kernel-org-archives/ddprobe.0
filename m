Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD491EDA0F
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769840634; cv=none; b=bQ9VrzOwS7u8eNIYjhHAA/2E3oq2nO8WDw+xMTMa6mMfPhFr2nb9G+Kcw+wwFgzMvynGHC/J3Gmq5QmCebJVL7YY6G6jUCZU2WQXuIkvfl8fk27czSMP11X4suc/N/VqOHvgkd9Z/4Ni2JJf4TEXUXMiNEXnxzadskWZImDh1FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769840634; c=relaxed/simple;
	bh=XDgNpDokcA2bOGYSCQ2Rti6l6g3VwoB83xfVI7EbmrI=;
	h=To:Subject:From:Message-Id:Date; b=m2UXg9vvS6k6ZC7aSyuVIzGb0T1FNof29iQEPjiJ3QbWpV8+5LrA+NWUjHf5VjTDEef4ewGM6daDJzKfNb9U9CY3cnWMeYdc8MqodjTk9y3W7e0YMjmS/E6h0bjPMzwsuLvuS7SsRjFvTE5ssHgpQ8hEQ1LoHS4qqlzEUZcV9d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1BT3eSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1BT3eSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A971BC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769840633;
	bh=XDgNpDokcA2bOGYSCQ2Rti6l6g3VwoB83xfVI7EbmrI=;
	h=To:Subject:From:Date:From;
	b=Z1BT3eSMfgP05oTDl6HNG7JLoJ0W0TqyG9O1lrRQ3IxKfMTqmPAZdFt+RqOyLbr/9
	 tyntXO9rpWObn23tRstIFh0/X4k5qBnisrNtR8URLtPwkWrfYJbq71/TG/hEZb73aL
	 jIIE0joPfWeablrYc1qHtKWxJosjTe0FGSix8trkksHabzOJ1QRRnZLvJdXugdXOZd
	 ydg6p2ZjRs40/dEPmKC3ENWUGiBix3t8QPbjo7ruH2ufIpGDPHOAJjilFCeqwDiUjG
	 SWHtjrfgbpIIbJ1mTuLZA/RW9+ppbAPZroQeeLrUbwP8tLqcIP4oqY/peISNFTQSwt
	 4RI51FFHO8U4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A0BD79742
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176984063357.32350.7480316256339086912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c02f1d0678663fbaf81458648da95bcf72ab9649c96c943cf627aa49db3c216d
Date: Sat, 31 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769840633
