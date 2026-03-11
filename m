Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5E6436D512
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773200094; cv=none; b=GyNap66U2msTUZYmMVE1VQ/MiAzBH6EnhECvy4vXDCYjpNnp24rdLx01dHnztr7EhniukssqwcY6ahqaJUIqMI8Y0e+kPySioyvGCL7o3HW1oEVqwltKT1SW/4gZ9/agy5OFYTpiUZni4e9DsTlXdvmSAjXHIbed27v6zwBtTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773200094; c=relaxed/simple;
	bh=7PlDlGUj/nd8kH35hF6UWBcdDnjEZOERt1fs2T3d/4g=;
	h=To:Subject:From:Message-Id:Date; b=dY1uEqLfyc0UqzMjgPDZ9EhU2aAQlMhD3pa4jmA+iG+uoFatOTlCZTSusogc4IQNLIXy66b5xWwpO+3kP/DlcKSYVhIK6RCWl9RH7pLuoY1S/mKTwxe+omP/cXH/RcxVX+4fWXZrnOF5uLRIgwYHtxagUS7EJAAJjT/1OAUprlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UtrUi2EO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UtrUi2EO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA69C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773200093;
	bh=7PlDlGUj/nd8kH35hF6UWBcdDnjEZOERt1fs2T3d/4g=;
	h=To:Subject:From:Date:From;
	b=UtrUi2EONcdIois2yHcJWpji9ck0ZoUn9o48ll8L5U0ctRI7psRJVmtNX5lPbSUvQ
	 6Lpi6fKMKcUhLk45n6yxyfmHpQqGaGX7cqpKHgT2ZLzTQnKwxDWiBKwjRV+thGDO9o
	 +3EP/CirxtuhqNHRIS2D7xU+5NvWGnPHGIg7qQsIwJsByvvQis82ctjCP51tJvkodz
	 tJbiM3tTAYPg9nMZmEbCJJJ8tE82uMm6UkP8Hyq1+3N5y59LTaWTL4qPU9Q/nvALyA
	 XYCYcqFcKXCsEqvHZAai7lhISFgkHvpmfa8oOTXzQ3QNcGhhyFmhtr3ohPLjs/OPI4
	 a0EaqOKbc2fZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F455FD88EC
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177320009357.23012.10422699587795450828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0323f17df249cc66e77965c183c8e87da61182dc1560ac5619acdaed32800a7e
Date: Wed, 11 Mar 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773200093
