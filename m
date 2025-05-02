Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3500D1F2B8E
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746215994; cv=none; b=rDTTE9zYqVyyUb8I98SxnOVjLmQQsA2BflY5R900MegHjgfyTdWsYeHbS2oQUbIvwKKrn6Emdy9ZFOlb+udKhWRG6Su73rH4grL/d+pb7TIoQHu2BKQXVBwVxD83GQixLsZ7pq/CNOdIgluC0C63lUlJicDRUlAlxSHJUq0LAQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746215994; c=relaxed/simple;
	bh=oINkgVWfVtp/KwZ15FARlSYGwepCaK3/GNAY1fE7zOg=;
	h=To:Subject:From:Message-Id:Date; b=Em6GrhQIERGzdbjcTWuBl9CZFx2Y+fw4RiTLzBgCKc8bUM/BU6IlBI0Uktp8VoqswF3Crdm9s0Y/5OPK2pwM9I4wMzo/kQsDtCohro/UBFAc/KcxmJYETeh4dYjD651NZ/Hpuy8ceMGxeuPAmH5J0eTv3tGsVNeMiR8tv5fj7vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Y7+iu+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Y7+iu+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8E1C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746215993;
	bh=oINkgVWfVtp/KwZ15FARlSYGwepCaK3/GNAY1fE7zOg=;
	h=To:Subject:From:Date:From;
	b=j4Y7+iu+I3INNM9NrMv9xq44rcNB5mNrBdYIaVIzVjmb9tTChL9zaCVO+2SRmsjXW
	 FP7K9fmwcSbbZxNeiIOpIt0faepWXRHCEy3FUTWURllUkQPZBkdsloD961eqsqVcbk
	 CUGEOFOMxpaUZU57AUuo1BBcOh8GHMHOyJmbmHOJM8u8RM0WhkaD1d4qkuDJjJ05VH
	 ifYNY0WiiSFavRXPndIYXphZx0Xmxtq4wHqOjO3h1KbqdfUXR1chF/aRMu66FjfRSl
	 yJtE8oU2bfcv4G0Z7wE6mISm/Cg0qyYxB+a4noydA8ZTyAMV5PtvOKfg3ruN0OdAyh
	 hdQGlGqmL0szQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5C1C3ABAC
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174621599357.21637.14212895601290730843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279ce7ef054bf6b8947ce626d16c42256a40938edbe82cab102413c5d1607680
Date: Fri, 02 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746215993
