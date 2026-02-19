Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271782459E5
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771463694; cv=none; b=UHINEekBf594yAV6jDYZ0qffruFI2Ql03bIv0Tsk7nnoV/DkOJXXR59kVe/rs2ZNKp7m4e77kwrd+06tQ7+BFMj3kUUNQ9xKwNrdl7h8DCaXLv0ICkcgJ3jdpwYkqIFweGgoRN0pCRfESPuCyPWL0ijj9nqvZCG4i5t9BPQgG4I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771463694; c=relaxed/simple;
	bh=W8vtndB5/c7NT+48vK5PJ4JJIG+FRuP7s7GG1IgrahI=;
	h=To:Subject:From:Message-Id:Date; b=NpmvYLw9B8uZHtiJZKaxmCYP3tiM3X/LMorwz4NtNDCC/z9NjW+pUOzEWWTOTHQhiouSnoxB+gRZjkuz/8JFPJRhbZ7SpwBlIf3sUghUXqhAYD5mJTF4JZox7vCm+BM3RcmAgE51mC3bXIiOU+p+ZrYuIuWgIsU5r1gQzPGgx50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUlsGMlO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUlsGMlO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B823EC116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771463693;
	bh=W8vtndB5/c7NT+48vK5PJ4JJIG+FRuP7s7GG1IgrahI=;
	h=To:Subject:From:Date:From;
	b=WUlsGMlOMuSTFUaXH3d+sbFbOQby/u2dVZg1cNyiHwgy45xFO+r9s66+lOZkN7ont
	 tYbOphnf6/KgbgUd4GqzOTdwOJy+1QnnQ/kNpwR8fFxaWzmylPZ4eMCxUfh927DjH9
	 Bo/h8RRgD4+reB33hqAK5Rv8O/MiEs2EP/c9j8PVR4ODllYc6z9BnSbPzodsdA3KmT
	 uz47eIeaUWohp44Q28wG+Kh0rUwYhfXDn4O2o4SI39sFIvWMVkIq6o9GvslTzhIV3W
	 w5Ak5Rc1wRvDp03uwQqnHZndujwpO0uwi5Fk1+V7+6Gzzr6hucZV4Or5TvR8E1VpdN
	 MB+96GlQ7wjcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B34AE9A04A
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177146369360.630.375438042702173755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d8176d41df9be1cb7b2b7abee101cfc6a6505c1414f745744c5b3c38b37305
Date: Thu, 19 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771463693
