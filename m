Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D53F22127B
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753808396; cv=none; b=eD6p49cQXWfVu7YvPpUpNGxg++rUT+oQrR6eWiWoLbTi+wg3lmfmMg9ifSuWvVV1ZiKzyMIFrQ2f/GQY4IfdXXyGxafDR3i6BzMNBOXeg75u/CKpDS6SC3us/ZeyXais2x3sOqh/7eOXuEjbqOX+WbIn+FJx4HROPhzeazjbOSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753808396; c=relaxed/simple;
	bh=39nZYpcA9iMt3KpHigELaHNkYUswCjApwZNcU82GJZ4=;
	h=To:Subject:From:Message-Id:Date; b=p0Pb5dSQDIAdYBHBPoNj+BeS/S2YfOWwkyBVNJi8yHUch11/OFb9YcWA7fvpxQa/yIH77EIrL4zcBuGKEl8j32nSbC504F/72OiklhkrPldTJhpk8d+IXyOY/ag7LSq8OqegEhOMzRbYd58Mt+RQ6XL8aQUeV0kXiuc6xN5Oa04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2emQiv9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2emQiv9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B0DC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753808393;
	bh=39nZYpcA9iMt3KpHigELaHNkYUswCjApwZNcU82GJZ4=;
	h=To:Subject:From:Date:From;
	b=q2emQiv9WO9e7/2BXCn5OppLkgrq2osGYzF1O9+I+P0P85bK8WGxhv+TVMND0jF5C
	 bET95adw626Yc4NFGB0E29uYVu+VoKXEO5dZYA/G+7JPdRJjC/+/n4W2J/2S/yR/Zh
	 UrvkkfIzPFRFq76HAZ8lHAqpspR11W7PYtewW07XPO9KqzjiHHLinudSqL+yCdZf58
	 DlG+7HIJBsMrrko8WLs+s6kKTNwPU2tGQc7JoAVEE7fudKaDWByuLep+l9EYKHuYIx
	 QheBT83OLi6NCPObVtrVOc43Y6vE5xB+PdsH55oo35GDvwYwcC4eJ2cWD+OmwsoDFd
	 JtZwqSQbz0YEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EE1C83F26
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175380839357.7265.9271890075650986433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8f2d9021b23a1ddbe6378351ce88c65c78d8a6e12f86ea6bed24a80d7beb28c
Date: Tue, 29 Jul 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753808393
