Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 030983ACEF6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773072894; cv=none; b=cYutZzRHQtf3QhTMRVtKcZdU/pPfqDfGrE5fKXQ4ioLoDeUKfsljpERPamid1+PB9LTpIETociM26E47gGO4S8gB4DkRHCz84OKYLltPQQ3GiVCpslNABlOyHDPAnV6gk8DhKUW/GKlB7OdduqvWqd0dk4fah+nKh7mRq+JXjdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773072894; c=relaxed/simple;
	bh=DJNpky/gJlOZ2E9lkOmUeqpERVVPVAn2hqAr+7m6LKg=;
	h=To:Subject:From:Message-Id:Date; b=CG18+TdGHaQ2oUn+ULFm0HcoimSo/MzDg3L0uk54qkv4Wy0DUbLxUPwgRUGrlFc954usmsAp1w7tSpHaLWSbGbWcWXa7K3uWL7tElknIQhQnwo4Cri05iTPb7+1EcWh4dxuCPwDb/xUa9Mn4ekFG7KDxekp0Uz50DvyKGahkHyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvGm4mUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvGm4mUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9ACC2BC86
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773072893;
	bh=DJNpky/gJlOZ2E9lkOmUeqpERVVPVAn2hqAr+7m6LKg=;
	h=To:Subject:From:Date:From;
	b=qvGm4mUavlRACb/LS37qSoke5SjjfU0FOioV8Xk9AlGEa2qmqeNh9RcWDZnQ/1NMW
	 dy9va1C/SfzdhlO9tvKJbkTbz+/eJNridjlQ5D9zUERGa2WabcFzUQLjxKJPrNvpwP
	 +VHlrbMZHxHWfbjBzQ62/JjImLP5E6N0Lxt3LlNEHURKlTbwxHOY+KatvuJ35T6/MN
	 FuVgGIGByW/e7BcZB2AwA7Vn8VMEhY9g2f4W2ubxUce2mCl7crCQ8QEW8diLfDhm/L
	 zAchmiCAJml8d1cm23zyvRSl0mAnwgiher6xCIleZ1YJ3Y2D8iYl2JhB6sj6ACfIuJ
	 3GxH5DI7zIWHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F038F4180E
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307289357.9574.16667610998120439271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3e243178f2a919303f90ca7195148f2d79987da48d358fb3c6dd63f3e98209
Date: Mon, 09 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773072893
