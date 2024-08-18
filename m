Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3023C610D
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724019354; cv=none; b=FWreKdm8VfBqDHkYykaOXN80bgQWIRwd5t/V2l7I3aXxfMkg8PnwQzTljYwdc+HxpvMFt0gB8jzhvvLZtJNE1VRphAbRBTefQbJfPsdJhkfqsTZQW4CLeiIhJcfBfl8xN7dNd2YSpKqzHMa/TAvZ263Ct7CgeGPRff0bCsX63Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724019354; c=relaxed/simple;
	bh=fan58j5ECfM+wEQWqyKPF09Ut4JHKL9GhvNIopIc70I=;
	h=To:Subject:From:Message-Id:Date; b=ARI/WMF7Du+Lh6D42E3avm+BQJQcyfSH6BH/f7OvbvjTaxGEHLI/OsZVfDIrGhvrpR+CqDjyXq9VLF+1FNvHcNLYnS2dHRnlNTQJnT6ceeoYb2Hw+frDrc8/F+B9Bro+735kICU0lzYBqvl6/Z1npbVke3hBeTzJ0R2gYfklfqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+6Rh/5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+6Rh/5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D4EC32786
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724019353;
	bh=fan58j5ECfM+wEQWqyKPF09Ut4JHKL9GhvNIopIc70I=;
	h=To:Subject:From:Date:From;
	b=Y+6Rh/5zBK+ttABApQz0W58L8LsXBjep1r+YJA7x65XUXEJ67dEJ6uBIs4IWiDTWH
	 8j/qgotJ0dbwq6UCr9FZTo0cO51WbUcGTNZISZZyqX+nJ3CgZ8lNp7i63/xtKG7HtT
	 tpATMxsTMJyvQ5KG5j/pW8cYdOlXQq62RQ/0/ar/hYe93OgB43VC9bXwEhnGcdfQKu
	 cYS0ecmjssXgjp38nLkcXwEjihd3/H6ZB79/7BmzznIf6X4uEgZSBzPB3DzBtk7sJR
	 NNkrZQRVDRqBFQa66F/fGHUoxMxOoL0tCcfgsmkKIZ22KWtjMeP+6zSkdeqrcCD6o2
	 UijXb1KlVuQwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E8C52D7C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401935360.12842.8861408907336368618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d3acd6e83e708dd95f465d574a6531d7bc4bab85ca8e304ab0e8bf138f4d44a
Date: Sun, 18 Aug 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724019353
