Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332473207
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719828263; cv=none; b=fjri1FI1aAiLkKAJ28EfZn1iI/on4HJkph/yNkRgTR+2LkkaGZSiBhX9Jdyq279Y3PJzrtYn9qq+p3fE9F/6O4pkUGzZtvqJBGrqmfZto8JRGFom6NASDssKZDv7JRhmInw3SLEV9IqbhH5LCYwl6h7FnpoBp2ImYWVpoVJ3XFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719828263; c=relaxed/simple;
	bh=HFuxVsR3qQb5ZfepFYI/aPJoVuy6OD1bMSktlIvhCHM=;
	h=To:Subject:From:Message-Id:Date; b=kZ0gIlb2oHIxQZHzm/kqK6I6bJem+bntwstHha6JnDI87a1HisDZccl15kwIKwRR41aDdKNyuu0sivoWs+q9cvLIIQenUE0+m4oE7zGg3+qsznmhM39HghLEyZkp2ZCl0sTwt5xVi5oPRlMpkFtEpjk7Y0qUdHcPrcT6seYA8Wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duXt1sJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duXt1sJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08BE7C32786
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719828263;
	bh=HFuxVsR3qQb5ZfepFYI/aPJoVuy6OD1bMSktlIvhCHM=;
	h=To:Subject:From:Date:From;
	b=duXt1sJf1+qCwMbXYMu6PVQ1LSlhckDntXGL/oe1x9WqM1W6sp9NrXlufMLaHg4fk
	 XN9o8gd1OCdeNf9keCX6pgh0MP3OGJ9En7hvALArkXpioFRJyim4gba1k5GcQTVCu7
	 7Ia1bUEp+B7sgfYqbm4oD7b/cLKwyMS8irGkjVLzctk9Hgcw0os0pG1mO9KXXQl254
	 R5+tzXjFPfYn5LredXlHJBdZqyPgGTmKpiyuJP+cjqCS5Sb6gsusmjBT8mZ/CfpWPR
	 TBJ6Z3UTNAejoQe+FiPMcf9Oc5XUx0vjUVgRZzWDlwXklXYAJUsz6bcPLK7QIxIm7f
	 fiwABHHBsNZsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D46FEC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 10:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982826285.12837.17470461968578138240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbe41ac57139a12799a47dad47b34045d5201582bc851af41f872132e9afe1e6
Date: Mon, 01 Jul 2024 10:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719828262
