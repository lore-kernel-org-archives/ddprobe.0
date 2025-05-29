Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C15829208E
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748550594; cv=none; b=eK1FLs56GaTNMbJrjzNSUjAnjJE/qny9PlKN0CwyckykMtXV/Hf2/qW/2I5Gilf/dSVQae3A5S0SXZoqz7dhTRwJvzIYjTYMb76g+5h6UbBED/q2gpEWvWG8sj7wkG+xOISxXkNHkApOjx4P8wuR0FjxocAnwbKv1SJWxrJGMfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748550594; c=relaxed/simple;
	bh=5OzeB1g7/OPLDwQ6l0flNzFLmYA3dO0VQt7i6C5+hNs=;
	h=To:Subject:From:Message-Id:Date; b=fR9TztqMUPKE0EeCoMg9GBDpdW+oL3J0ioYx8S4IGAeItEkXRxE5+S/6WjRtk3COWx4sp1T7jbZS8lK2x/IWBQTJLZ3ABUTsQPqz02Ip0wSTjX7LiT+J2uiIvjTvAMCwtLMzgDpci2suOT6TUjSxPbZb8XlqiK3pQ8MEmcMVQ0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MsabJ3Y6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MsabJ3Y6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA64C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748550593;
	bh=5OzeB1g7/OPLDwQ6l0flNzFLmYA3dO0VQt7i6C5+hNs=;
	h=To:Subject:From:Date:From;
	b=MsabJ3Y62hV3bZcrawMHGlazdbrhvncDa6z8uwsFAKsHxmwKN51jvVmmOC+wiR+9T
	 bhjZ/cHwOhlX2Ok0M4PopVwg9SFhBcPuVdo3yxeGJUT9C37VE3srpE/3wHbD2ObBnG
	 Pj2u7WLpmf3oZ6WjpBHoqumbK2GxYB4IVHVcZTp9LvFgs2Bmr3rfAjiiodKE1LMl0a
	 6SrBnkSz+zGLhUfck7NRbgCvTY1APEf29ETesTKyUthjMmUFa64c4ztHbb+y8FmE9k
	 tHccstpDQWkt1VR0NwLAFIVzwbdhqXDA4ruSKzDz/d2PNshalKf+eoeP3O/Mo4rkIE
	 AQad+ApE3RHCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EADDC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174855059357.17341.9708930019384134030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce56150ce8ece319d7854e08963ed2902809da630594a028ea6c998b9c7e63b7
Date: Thu, 29 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748550593
