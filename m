Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE7312ED873
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767722633; cv=none; b=MNJ+V1ecMR9kLa8xaVc0v6YdxCTGuxbHdN+G0BFkYgPRWErB3IlWqScaiOR/XZjgoi+n/vPhN1tZXgUwz+UX7/xMvxE0FXhWBqag/d1bAl8dZ8kjp9ewSrP+tJr9OKhWJVn2sTVU6jSGz1dWZQIQEadHffQskeuWTAdbqs6UkQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767722633; c=relaxed/simple;
	bh=I7yLAU3ZTvpPqZI8ozdjhJtrcaM2cmKlOcf+I8N5fzk=;
	h=To:Subject:From:Message-Id:Date; b=MEs/XYE+KDQ6PjNIUbdRCaod2QTzMkeof0TfFIPMM9bidSIaT0XrTEijn417PZ/RO39Dl4bq+eLFrBwAMvhominBVl3tCV9Swrd8w54cZh7lj4D/XO4LBvltR7rJYSuE4H0Wj56+Em4ECsb+QZaqpyphRvC6TmIE4ZtZxu3h+/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFUmylk3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFUmylk3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B22C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767722633;
	bh=I7yLAU3ZTvpPqZI8ozdjhJtrcaM2cmKlOcf+I8N5fzk=;
	h=To:Subject:From:Date:From;
	b=vFUmylk3ukk17Y8/71P6PFkqVRQU2BlFAd4bz8LCNO4A3ev87zOWJ8AceRFhxrt1u
	 X2LFN+76IqV2IPF8yEaHm3+2OgZAWIssLVkwlQ6p+YL6cP5ApUlGxhaYB1SNSyDe+f
	 hyuY35igS5LLSa2SGRab2pA0V4hPeVu9yBMI4Nkmbx+hpndmgJJ7AzGfeLfoDN8qQl
	 B54WyzFbpzQNxIstcNHaQ9T3X+jcglsKNOGE58XaOM97OwwjFHLAvIR3Kn1qdDl2D/
	 b7YbBndw57pSQvTNZzzPXA2iSJGMtkrSXRvYnJPii8OOWTXhv5UO5OmWKLD5JgxYEn
	 YG4iIo2ThfDDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93409CEFCE1
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772263359.29473.10201698252466508278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc8ddfccb8f2587907b086f963444d2e5ab13f081fd90606445739c9a6f614be
Date: Tue, 06 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767722633
