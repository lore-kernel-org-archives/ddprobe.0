Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E7F21B299
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727537754; cv=none; b=JnUyOP+o002T3MDOaPxR72xjGLpvn708Drs1hbD/qwVI2Lnf9ZyaJp0zI+F50lbxL9VETu/dEISHpldxd6YxQcsnWPf675GGAmN1Xk7S+fTCGeK2D//24G+n/kG//sqaU7YjrjTShFyaIqMnYMM9GuzGIBzFdje4oHIABJyOWaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727537754; c=relaxed/simple;
	bh=66cKaNnqH8PUinbcLRtzKgUeOqj7oXKKv4htE+cRThs=;
	h=To:Subject:From:Message-Id:Date; b=JXmX+q4mrilRFVYij4xBYBQoWJLa3EefxOad66veAkHCyohrIG7U9yCc36IgY2ZVwwfpLVEeJer8LzQBTKjKYtCBY7wm5R6eI2RZzXBTISX4siYkfxgV2mlB2jEQwFtSX+R4L5YB+9bZNQdIe6mEDMpqp0MfVQgC/JZgWTaHYNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aReFQQyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aReFQQyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5E3C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727537753;
	bh=66cKaNnqH8PUinbcLRtzKgUeOqj7oXKKv4htE+cRThs=;
	h=To:Subject:From:Date:From;
	b=aReFQQyC4vauDu9n/BMA/pOCJNcGVsZOAGdItjWjK86REcblIa4aFNv0Qd9UKWugL
	 vNwem6D5/BqQyBQp4US8jnmmGjTZKsylLkF5vB0qqPheBUq3LqPa0uUPBscToMEBkX
	 LaAKGri4AyYQlzxFbCKMEQ4dijf/Mba4PSGkjJYVntC4de6G5SGKSsPpYuoZ4pVhiF
	 pt1UkxcjhDj9VNiEuvR6rQWHOpnN9It0p7toMFjGOFjgcCU3GjkwbP9nPWdBxOBRSp
	 5xorwuRhlwF07xapNqybryDtY6g6ugu+A7MXkwxFqGgPLH7zSOzsS9DYe/ck7clrLB
	 aVWzgW8AjiQmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE3BCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172753775362.21722.17785930459429037930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92277aa6c47676587134885483f94e91eeb11621ec5dc3847bf55a2fc2dda5dc
Date: Sat, 28 Sep 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727537753
