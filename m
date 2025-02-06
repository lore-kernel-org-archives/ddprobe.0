Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371B7376
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738814154; cv=none; b=XcyJjhKmazWVJKooggBfev8J+GRdBcaq8+oQAxBH2mpQr0FLv4KcuBHbNo7GlIFjIa3JrED5cdxJOOwaMC7AvRiIE6LPfvaQj7Rsu2AZF/ip5wuy4eHQ4VEPwSEkq9kYIefY/hCYnf+8w7Qbi2GoqyCdPN+q47kW3wPWqDhyvhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738814154; c=relaxed/simple;
	bh=m4H+XC0iq00htWVypifj4Ex50l3iCNxRgOIx9ykTxd0=;
	h=To:Subject:From:Message-Id:Date; b=F+Kv9c2ZtgmFfv8bjn0/kGrXC6TlsdfEWhw4PHjGtgvkD4pesZokA7aUNM3plq0C+b+tAKjCxVeLbJ9ofDpbZH0KnOX0s3rkO4gyRTwgn2XxV4iXoQS+8lGNNAvbI0WK94ziQgVjbC5u8vk4FshC9h5TsTlQBXs1BW/QmzrGfL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K+aHBw8u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K+aHBw8u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BE1C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738814153;
	bh=m4H+XC0iq00htWVypifj4Ex50l3iCNxRgOIx9ykTxd0=;
	h=To:Subject:From:Date:From;
	b=K+aHBw8ukE6Re4MBODgGdmxnL4AYYrNbd4ECXbcIs/FwXI/KjN4o9Zqe+mWYyTrVx
	 EKB+bmaDnquYSsuJJNB62oCcwX54+/VFq8jjlY2H9iBdOwlVfaRCkTteE9RnwnGKC+
	 +1/v5xO7VvPWkelZw1pBvlqmCrsuWE2LhAj+4fnm6Pme+WdIh7t/DKKG6qLgXaPggG
	 /i0JcKTdClrdek5aMh9ae8I8nlXUPG/ZKrhINVKa9guXgarcPbcF91zazSrpgnjQ0x
	 z6YCneyVirhDp0O2HVCKRZv1nt8aG+SSMb83/rieEFYwRwV+veVeqOatrFJsi6BXqv
	 aNqT/eVIheQVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942DEC02198
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173881415359.20828.12660372278112227248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a96f860d25804ccc73157de0095e808a9d2296dbf13f8be9250d52402786953
Date: Thu, 06 Feb 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738814153
