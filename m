Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A63B78F5D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764604974; cv=none; b=IRh+n/B6LJrK4wOgABVD5SZVLy9Jzjm3H6TcA0d07BHdcxNZsTwZZu9KsePAV9OvGHjvnmuXNm2eufJ7NakZ/h2t7ADlLPN/uHouzNrjQIet2Dz5Ib9uN+vFj6lGQmVagZaqIY9XxRpfSH5IezUGq2dg/w3Ah9+0D5x+5aagolo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764604974; c=relaxed/simple;
	bh=qRLvpEV7b0+YmLNeOfXmjbasgFejqodv/8zRXkarOfE=;
	h=To:Subject:From:Message-Id:Date; b=Y917nxhVoeNg+PLIjMM2r5n40Et2KIqlEV75dKEnSPlYhebNjDp0eVEFws5g/qG48cLYWB9KEri3ppE8oCB9To5lT74ppJbNFOk+XoFyK3ppH+0Meee3q6khS8HKChGgJ5rJdypXGyTkOM4Tc9J6L3qyGbXT+bZWIS1CaTvY2Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JYUoqoZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JYUoqoZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764604973;
	bh=qRLvpEV7b0+YmLNeOfXmjbasgFejqodv/8zRXkarOfE=;
	h=To:Subject:From:Date:From;
	b=JYUoqoZYfpUL8mCxMDv9cMLC0gzov/grcFuw2N1EKwRt8lLVnrCpHIaG5SiI47Reu
	 XbZUT5kBW74yeQGpivzmaZbzILOT3B2U3fy8l3EQhcH+nTei1WBiR3sWkFoNYTSSTg
	 SlvBRLxicMVkIvU4j9u35hePQSEMGHKp8fmXqE6MSFl6dljiZeCtz3UaOvSWPROWSM
	 PhBbEYN2VlI9MzQVcejal2Cug0P9Wv5jmY0uiKFRD16QymVWEpWN2bDiFqoFqKjQja
	 jka0tceGtDvWl1VcZOSBIwV0WvjV2cOGnElZpPjnPHDLDnkRLmNlogrSvTK8JF/hrB
	 cBJZof5TSI8Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9055CD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176460497358.1998.7573254864283345644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87643105d9eef0855fbd112fec3dd7f758d93cea510af73cf399c18179f10ebe
Date: Mon, 01 Dec 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764604973
