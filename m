Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BE61DDC07
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748819395; cv=none; b=WKGfdS8xaeM4vzjO/i7/OIE7cL6kVI3fRaVN/yTlbKm7f1U9r3pqaZjIrQgWZmVI1vTsEikZiBIKV8kpqHSX6ywlXxgA5ivsthyWo72HJqFQIoCeR76cQPM3jxCr4pDHLGUoWraxsIlrjqkpBrwubgtbsnGAsWNEkX9JeKCb/cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748819395; c=relaxed/simple;
	bh=scZ6QoILBh0aDCeE769oyw8IbNUHAYfKcYPmBSUSxhg=;
	h=To:Subject:From:Message-Id:Date; b=NYldb/nMOIO8BQV7ZPRF8OkJYHuACOSI9TGFz8F1I4Ojo4O7vZGTSeWrvD1C+MKd508oWr7H48QoJCvXe6iapw2BYO1WeHa6L0NKrNZb6kXb/e2QlHq4tW0eKW9VXM3gyXERQx1aH8ABv8Luau3yUrvHKWIjGRnGZi4vVFR7PbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdK04MFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdK04MFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DE6C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748819393;
	bh=scZ6QoILBh0aDCeE769oyw8IbNUHAYfKcYPmBSUSxhg=;
	h=To:Subject:From:Date:From;
	b=GdK04MFsM7/zLvGaxn3m+Ogh30DvF6J+XMDkt3+OVhnpFfQtbdCV9x8y7XOBJkYEW
	 Eq82O+qDs9HUANtH1YCVs6hhWwA7ZXRxHCMUsoWluEmSFm3c0slVnGgHtMpiGdDRhB
	 qSWDcLJEmesHFyB1sxDeSB2t1vzSWixmbSHCTWjyaZb1mg03JcaiKIoYFqNEtfMtsr
	 esra3DQ5ygvTeZmOUBZf5fx+ITTOsy+a2lDimuGaHwsSN6rm9ZyRgnY9ZmdiTmPqwq
	 ajg0mHkvx66KlYwAVWbQUepNo9/7562QQ5q+5440fOR1tO6pKr+OVbHDNwjZyAU0rT
	 YiW1w3wxPJ5yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F402C54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174881939357.21100.13314227692308030235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b151c73291771fad8f6dd2e59caaba0a8ce6dbaa20b096b720a9bf285dabd755
Date: Sun, 01 Jun 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748819393
