Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FFF11E0DB0
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749827394; cv=none; b=Mi/qcE+U8nfXPouaVZlibgkiIu+kQLjIaE0NrZyOg0WaSncya55Mzy7yxFVWnweX4ang/6QdXRms6XEkJ7eU33qQKDA10rmq0fLVCCHN39Vev6t+uCFYEs0sDpRrIr4iR9JxRMuWRPkLym3EZuICZ5GZLuE7Pgc/Ol1f1P0kmLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749827394; c=relaxed/simple;
	bh=GIdc1G3ePAQUqO/XPxTZxlaMQPb5IfcCWJ/BGaxIsjM=;
	h=To:Subject:From:Message-Id:Date; b=hcxwP1MVW5NWFszOqwVqjel/CB7VUMH8X+DJZzwP+aQvnfaGEJERTrJY18IXz6Agk4ADSZYlAt8sMnUoo5iS+kaIsTekxQX3v4HPy5brpfA/c7Ujof4+0c5mvP2HcemTizzQkKnqOjYEDd4dGSdD8yIHRQqhcJmoxF8viYL4CMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5sVbXb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5sVbXb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A0EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749827393;
	bh=GIdc1G3ePAQUqO/XPxTZxlaMQPb5IfcCWJ/BGaxIsjM=;
	h=To:Subject:From:Date:From;
	b=s5sVbXb6/hhKCWu7X9A0kZ4hDzf/4x5kXQLkSTQ1JQd4resv6ypu7o/HmzVGvdvnF
	 2/w+5LOffqHmgBZ5w1KsJKuTm1NmgNoNepfMNb6+bGQo5dvnnbgsnBV4vL0KUD1NGD
	 1DxWm6MqCz39Tv1gzl6x/+sk0nabmIy1OuBbJ5VpjCrJOlTpVNCv/312pzotNThh2Y
	 DuacbIxt9baTsNx2rGUMqMccMe2mUofd4wuocWZHj9KW+Q3YKleuQOjLkhc55Z988g
	 UfYht8cdGyr8ToNfApYcBD1fyQN1hXGJzKdOeXeGiv61u5nZGXhle6a3NzZXTjxVQF
	 4LOvnvVDFwfZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA1C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982739358.22589.7391789687924752774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 300fe49eda0eccc24131678bff7ec563d99d6c8fe58fa1f40dbd2d3a10d44d52
Date: Fri, 13 Jun 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749827393
