Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E43FF23DB
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 10:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709981297; cv=none; b=A8Jz+YlY0VigK2Kr67FlOhN3heb9EVMFQ5PQtZ0G5q6/3BPdftSDXKKJ+z2VgAl/GPSOvgYonJAxgyWumdhmpgxspIpsli+OWUxKE8Cjh9y9YpNaAFvuRSPZ6HDTGNPpIj5WvpvRUMDFVKBi8bwQ8iUXfEQO8PoTctN2FWcGetQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709981297; c=relaxed/simple;
	bh=vk+mhMjTn2uVs/vocEq8IgqX3H3xKH2/zDLjCWHh7vA=;
	h=To:Subject:From:Message-Id:Date; b=dOeznaQ2ZtmjzSCljPdLNaOYGIMLqR74n44JKgdcwQjqNsrooydo8hgoJjKVTqWpWFKLJxNsYvOKIqkFeYDdYYFTADf+yQVYFt7HjOH1d5k1XD00GBDA9CdvbsmhWgWgY6K4g+rGr6GUpSCjqVMBbdipOnAt0SjKy+BWHzQtwhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYtTdweG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYtTdweG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C941C433F1
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 10:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709981296;
	bh=vk+mhMjTn2uVs/vocEq8IgqX3H3xKH2/zDLjCWHh7vA=;
	h=To:Subject:From:Date:From;
	b=GYtTdweGhftqNfzqqqGB6jFzXrOjFGCbUh55rZ2wWmKxfFlfadKnAm6/gOU13ixna
	 4fGyYnwFBpPbeOI1LIPBPEDeXSAYjLLVFlnYBc21G1ycjRDOgssEj6pl/HatRvovq2
	 fk0DBunxyHgY49E5taw9ilUC+EIJtkWNgqywavZmcmT8mIgD8oWinN5cZfD0Fqco2x
	 XcoLVhCNH4yLHcb1H2a1pfKZo4JYt0Lgl73Y7zBekKb5K6FvX4Gr6FdldD9MorfJJI
	 5C2uwO/jQLxSxL5NEAm3gICbzD9ySG5fjWvsPVKsuHr+vdr0Ygksz4mhkVOBfkzmfE
	 JROZRkncxdxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F754C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 10:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170998129637.3694.7696272134993173582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcec40884df3dda01f0bb219674b6fe1d348333cfeff4a08522761298be40360
Date: Sat, 09 Mar 2024 10:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709981296
