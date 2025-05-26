Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BA0219ED
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748222394; cv=none; b=mZYdP/iSk7E82DrwWFOBUWggCjMQ0Pt8OrrSlS53FR+BZi+XwGDRZ7pnYrzaBQY4L0o9PiTHrlOMvHqYJuNOs1Qer1elz6wyqJdlandU+1mz6hpekIK6PMHj2qGhI2WFOoS0LVEhkXjL60znCuYCr8rdH7xK1t8inWw+jVJsYxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748222394; c=relaxed/simple;
	bh=VRHVpKHxipy45lb+tCUyLeQ8zsonEKeO0N238oNxbfU=;
	h=To:Subject:From:Message-Id:Date; b=qm40+aTSEd8DDsGXtagq/3S8ny5LZmGtP6qcE3gloUntsVBfvp/5A5DmkNZTais+LGZoc8aOLM6VstI+yNzvXHVrkFVpsW89Qy1JZDZcSWD7hvSgZvlgIrf5KnLpkHW9+d8A4uH7SRCH36gGRJJH1TDrUy9OW4alRVXsJJrULSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFEbIii8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFEbIii8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7AFAC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748222393;
	bh=VRHVpKHxipy45lb+tCUyLeQ8zsonEKeO0N238oNxbfU=;
	h=To:Subject:From:Date:From;
	b=OFEbIii8OUfNfFNTXxF+51tM5YDTM8grn7whJZfrDLnJXt6HZtq/Xlio3rFOAZg5U
	 hdg39xWB4Bmc+glBYtWI0sShy4PnfwPMX4exA/Iy5BvmERi6zxIB8sEGdZ5a2SFpp3
	 ptSgY0vOcpskITrGh91f9XTIMVU4QXbkx/5EwQmR6pwpJ0/jOLb2xJT30ADmO+ZI9F
	 HQvRM0NZSmpZf+GvJRJiVYwYyVw3Ebt9vwFmnKJhwHxukuczTPoNTVHboTOGQUOYr9
	 H9QUyVaG+avIaVcJk18AniKjxo0q1saXvW5ZJGaPcg+uQ1zB+byfXnlhhyyiTWEAIS
	 gGfQ2apC5lx3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F82C54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822239358.5313.9901823446608843999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f45bf39f7dbf8c0e382b6af9636df9b4777d090bef771894aad0d061faa911c2
Date: Mon, 26 May 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748222393
