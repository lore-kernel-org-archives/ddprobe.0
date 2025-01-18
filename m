Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA612B17C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737191754; cv=none; b=JwA6QvtBg6I1hJNMHjJVuxosCwyPHer+V6ClmMT3wxozMac2BF5VgpvYOJYm2m2bccutdbCGxqGgRweT0UyIr9k/9NKgDNFsDIgVov863x3tQRobFtl9I9TuXe1m4odqVa8lo1MECEhUELIUMh2x/NPPhJTQh/VnOdrxa0ImHhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737191754; c=relaxed/simple;
	bh=2c/vW0UjsS7AZ4SIDBHiAZOg4B0R+hhpOE0JXEo/1gE=;
	h=To:Subject:From:Message-Id:Date; b=F7N2SIP9RO3alex6Re9Cb0M4K5qs6v5XqoaZIkQnXVwWTw6L/358emODq9rBBS47yG332Vmg3wXuuvrkBVbWH9nhJFEafVXe7En/iUAtJhw5cda84oduo/Y/WUEbvb+6BmZ8xXJuKEp6gf+SMkw10u7WhWwguV7ygdU+cxtnRSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oVPhDy8Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oVPhDy8Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2928C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737191753;
	bh=2c/vW0UjsS7AZ4SIDBHiAZOg4B0R+hhpOE0JXEo/1gE=;
	h=To:Subject:From:Date:From;
	b=oVPhDy8Qy9WtfkVkCMpNMmgWPMgRue6NcIYEP4CXHl/pmPK63lteGw0fj5SLQGOtQ
	 UIsbkmzCpIWm9o6yAhrk9dN99kruape1waIqIWDlPbjVYzODlUFxu+/CVbGcpEItjH
	 pAj4CRRT2UxWyn7iq8kkEkFu5pSA7dbATYYh+U33Of1VL0JBqUqE3lRX3/JnbasQB+
	 ZqMpi32Xqyo0NskSSDdm6GCc3+MhBpY0OTgytpoMuOvvfPboz2b15emMfzq8kOJJEo
	 yyRLSoxb/BwR8hZg7ALhyzsxQu7sD2c7crdqZz/6plT3SzJnHwbX2a9YhVGSxUp7bJ
	 hHQjlawqU59oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D4C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719175358.22106.572940223917118467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f071a60ac7bbede37027bd7a148d33a6168f689122de3f2e484387316f080a
Date: Sat, 18 Jan 2025 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737191753
