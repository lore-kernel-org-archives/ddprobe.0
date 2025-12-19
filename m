Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39186341AAA
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766168034; cv=none; b=oV3/59C541kV3hcTxmV1MkfveP/Fm2Vucq6f3Cvg/qoLX+e4jkuXbYgmmK6vTGLmkgSX9e4BmIC+GTkp5VCpRFkHF1+jb8C3aNQZvjwocBY5QhRcEmZNO0y7mhVXpuNu/6QvUWef+b0FXV87/odlOPVN1gKB8wEuVIMUStScVOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766168034; c=relaxed/simple;
	bh=5Ebiq2sIy6Ump/NYP0/1XKrjTeSmUi2pbL6+0s2rZZU=;
	h=To:Subject:From:Message-Id:Date; b=QUyJE4JxHUHvQ5OIcTzAvY2SgKvWY0f5dEd0fG9FPJU6KQFSVrtdZ98EeFz8FcuZv9BWhUYE99IsZDIWX1Hql82OC2n6Ru3HRHqOHHO3GVCkj22HoqVH4rGyU4zyLmM55uPhB1KgtA41+0kB1BucMa8fY4lswbj0wwzoBIUrxgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R54fWV5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R54fWV5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5402C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766168033;
	bh=5Ebiq2sIy6Ump/NYP0/1XKrjTeSmUi2pbL6+0s2rZZU=;
	h=To:Subject:From:Date:From;
	b=R54fWV5OPOO3ZcuQGTiIaP8bRh36P7g9S9enoI8FKxMcbrRoiivaksUhikTkFjkFl
	 cdXwnlNpL4U2STn9sxhZ+z9ep4z+JAfxEaD5u9uu3LN/y1C1WB/eViECTUU8lFz4ap
	 V/EB2P/9HnUcnikpvFuSyCIqce2KUmODs5iUK/4YQJNHmXcNqQgBQSsyvBhiVxcdLI
	 Oz6MsrI7dZCV2ihXSi1YIccuJ75eZkstHGt0FsqEYQpGbIq62745Sxea2tYstbSgOj
	 v/72CI5Gv1gLY8ObxzRoxCkgaVlpOqtEeEEKTMl2waVZ5e9zPXvGDKJOJyGIeIFAW2
	 J+HfvnnRv23fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ADED78770
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176616803358.22213.13092901975265663664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3cc233bdc040845e30338de04bb5428357624ff32e4167b9ac52761e81da124
Date: Fri, 19 Dec 2025 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766168033
