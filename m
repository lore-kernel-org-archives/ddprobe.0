Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210BA372B4F
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776341254; cv=none; b=g7ghAfDWcQvJUZJTWp3A5DKYpK7wRNEUJlNW/YjmyZo7PV+K0O5ZKUOjT52E/m2Gse1YAfIH3BiKFWPF+FuDf9Z50rjLtpJ8GIU6hJ6Gg1IWMWen2t6y3CF7UvGpQoIBcG2yz4vVs/OjSExJFpptFu0ys0XXe9VdJ7eHM6Q4YvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776341254; c=relaxed/simple;
	bh=3sNMFAALE5Ny1x3cUlnJQvNuohkJPt0iN0ClPN9eyrM=;
	h=To:Subject:From:Message-Id:Date; b=g4NGWoHl6zIY3A5+b2lKw2Dtm5bnFN1VuK/R9d5LrVyJk8kW5onj5aJXyalfEIDQjgbE7VrEGzSCAe79mjyK+LxdsSNwgad4rg0RuLUTn0i1pJN5FHc6Iyo6fpsvux3z9iicdgv0aPw8qUrdkgzzJlMC5JUYS5X5DsR9zxd5wbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mW+aj93p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mW+aj93p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89E0C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776341253;
	bh=3sNMFAALE5Ny1x3cUlnJQvNuohkJPt0iN0ClPN9eyrM=;
	h=To:Subject:From:Date:From;
	b=mW+aj93pCTAAEhSRL1TzKd5YRODkoGltp0hiKnE6x1BoGeibt+sxCiMNWke2m5bcB
	 TfoGgp2iWqL+lP/TABmBVbLYHHCznKb0kQwvKOuggPg9boHgRU6/6WB4U741eTDq1W
	 sRS9JbjcjCBkZ7a80ftRgkKyqni5mhTZXf5VB3vtLYo4SXzzjrAGtZVyNQj6gvqJ7e
	 VCSF+K7g3iT0F+sqlqf2KWs2KWBqfeDsDqBuAnCDcqmvXkKWslitdwvKKvutRuUG6U
	 pj6jNUItf7Ek6WMhtaylGgv92xLzpL6H5kByXYrmHl8jEgAVuHddDy1ND33saO1cvb
	 VF8jf+1oZUmsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA688F8A167
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 12:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177634125368.8489.12589294168178283973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a64506bc28fd967cc5fc08434e149eb6c68ef000500b7bc3479dc2b14d82a972
Date: Thu, 16 Apr 2026 12:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776341253
