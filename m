Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C3E1D47B4
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748425794; cv=none; b=lXCVwLXgLiURTgHcvDJ64cob+o3qB3a+xFJMKuCZ6f05i8bnfXGFt6rrILKNjsuGp9ZCSXmWtiH/x0FnOg9RIXdTQBwGX0NULSDrM1TjRF0m3ByvOkd4NaTM3YftnhTONNX/8jpNGhi4LrAT1L0Ag6MRkcWSOS7i9Olk1FUqJrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748425794; c=relaxed/simple;
	bh=ty4XaSnWHgbeErKmfi+S+reVsRfm26LLPykOOctJ+Hk=;
	h=To:Subject:From:Message-Id:Date; b=Qlb9kbrvYA2WrJi6+CGtl6wtYQaJlMxK4G4o8UKxoIqn5OoKzDGOIp7//MPU6MrS4VNWqY14iHCdtMivwpTgeL048DybX7YW1owZsuaNanYWRNWRmCgQGHZpP7/9OzxrPqInQwT4bZTAjCMbejyEyEwU9EUEeomzRQYDWAMQ7ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kilf6UFZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kilf6UFZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBE7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748425793;
	bh=ty4XaSnWHgbeErKmfi+S+reVsRfm26LLPykOOctJ+Hk=;
	h=To:Subject:From:Date:From;
	b=Kilf6UFZMD9eDiq0hHTgXWfWekODjQpOg4lkBWqsPJC2/tDcJTc4ReOetMsECtQsz
	 uFz51rwZCud939Z89c71YGpK5nNymQe9OpxopMx8dP7t32KygLsAinl7osJhQF2tU6
	 kOCLXxOM8S5XEjLICoAktZVIBYrQvUQ6PodXXA0NHNdp4ibdON5zcac2qJD3ihPZNy
	 PkjAj4OWx5gbY9LShgSmW1nwic/jY8xbRjFxEL7UKO0VlwqS0FzzW5O3QGg+woE47C
	 3dnTdvgzS2cC3KRE7r5+qPNjBJNvG2QxbOXiUe93gU8PCJd+L90sgBm4U352r0LOLo
	 XkLfCHN4PfrYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F955C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174842579357.6768.769048873530353799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20e91a6e3c32c647409b8e883284a2c708ba77c7953e680ce4ad7d66b647e72
Date: Wed, 28 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748425793
