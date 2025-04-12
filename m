Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5498738385
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744426795; cv=none; b=RJxhULgicXlo9Jckqdq7OjRr7ArtjsZskcS5SWJ7eJPp4GLDgBPOWAJ/NHsWMbx9wxfANEwJ1mqso4o7ff3K1YL2DW/C5pbD6g3rY2v3iljWdtOsz58XGxsZE9IJ4c3Lsz6MjypV5NVjgNtNwRAGMolhfHdkYmP0s0MVFTygaQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744426795; c=relaxed/simple;
	bh=zOWI9UuVQ2+67Ms+tNuCN6+lPkpjZSQLo1xV5DksmqY=;
	h=To:Subject:From:Message-Id:Date; b=kd74sC+WZNVKBVx3gouvtnFJB2voBV0K9zNztRy8o2ofPJiUoAaWgwBbyMLiw6yQHI0EYEZgX0pNWserAe5HlrE1KVUPbZTv2DDdoW03lGKkHsUR53xJfF7v8TQvRftpADN6hEeTtzAIyqNrJMa9U0oZzx0x8hhIDVvz6VyHthE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiaubG7V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiaubG7V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C271EC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744426793;
	bh=zOWI9UuVQ2+67Ms+tNuCN6+lPkpjZSQLo1xV5DksmqY=;
	h=To:Subject:From:Date:From;
	b=OiaubG7VJUuCLUtYdMyNBdMrrFd29niUFsrnBX7CIbP/GmqGkFDuGdCRd+CULYK6a
	 wl2ezcdCnLPkw1MpBdNqEz1C4DNzbOWr6jMuisscrFaQ4SqLBkrkLJZ348QF3JMrpi
	 4C1nMev6TsXkQbNZgKRNJCkA3GwxOD/CCQQtXsgr08he47Y/Gi76kdoxa34iP1J5zT
	 QjeLLqnHWjN4a+ImTWo5l9akQNS9dhKAqnrF7qfYKnZtQNc8QB7FEMb1O/XX6zASOd
	 5Ex3ca4XtLjmHVKOCx2u4x1b9nxr5MmzYi0dPMhWQ7NznybQlQd1a0DDNA9lh62WbG
	 k22W7Dc9TL6VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6DC369A2
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174442679365.13860.17491027438435759045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 841fcaf468c76988608635d1b5d94ff422845f13a6dc5aae1602f3d7876d1115
Date: Sat, 12 Apr 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744426793
