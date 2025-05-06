Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A43C286436
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746556794; cv=none; b=kB77uo3pLjG5Oop8zD/QdgieBWdKRNqNxvGU6ylz+qE6qi+pwHPIvvmBtub3Jv2WhAbCZK5fkBZfTrx369wWhhzno/SUa35ShYZbuAoTfMKry68Rfwjl2D30GedhCUWb4en7fjK5xtq1zBoeolwZ7uB+yecn0g4w3830q4QmYhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746556794; c=relaxed/simple;
	bh=A/ZSrpDNIeLwCvnUbjmVT1tYPfV3WwJ1Ilu69IrWB04=;
	h=To:Subject:From:Message-Id:Date; b=k+qJkAVQtjXy6Iq5Qqc+qWfGzIMLzelnlKkOJlxBfVqxSSsFrmrRVYwe0rEImvA7imrs1zK1iI8hNuKFN149sczXn2fAF6JhVVOq9Bi5VdIGQRpAu1xEL8Xq7rVWCWGXhRrmJ+Exwo7z21lWW2xeY1Qa7lThjPxuWm+Hu3gelR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Niy95YtJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Niy95YtJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F575C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746556793;
	bh=A/ZSrpDNIeLwCvnUbjmVT1tYPfV3WwJ1Ilu69IrWB04=;
	h=To:Subject:From:Date:From;
	b=Niy95YtJepM3fLE3M3XcdQzCuqWjnH6BcyfU4sM7z16GBBsesOLMNXKk4oSnzJemh
	 SxINPj1xtQqgNmOOZ7lgK/8FsLWvcaO7zCyCuNtpFB5fpzG7pleiOOX+jQoKeAmA4I
	 0dqr8B+Uqg6VCQ+OygMLhG/H5mXYkN4kcG0rxx3lHMMAPH/0aqzERM2nOnoLg/Rgfv
	 DXTqNc2l6p4q8MikjNBAzK0smKR9PMshRaXEUbjKTGE/lqKlQsGqYOwphZHZ2iheb3
	 mENyMo2Rk4VsK1LcMjq5zICfpuG6VN0TnnA72NSOiJNZdzB1Wen2FLmEhLqUfkE05A
	 xfEU+TNsgxPRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91568C3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174655679357.11787.1693789832814160944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ac90b80ac1c2154a2681556057f9d5d204c1aa09f697f34693808867905fc01
Date: Tue, 06 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746556793
