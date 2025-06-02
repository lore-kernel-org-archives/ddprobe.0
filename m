Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0211AA1FF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748848794; cv=none; b=F1rfQ2CkVTudm0igM1DgY4ooIgs+uXdFtFCe6ydyyCPvclkOSSNIacQV1KADLkFmnvg+SRyGc+rjIoDA2hSakSm9WbeJ5chp1kxLQYbkYCYm4m7LdNm9ZN6z+xGtaYLubUen3qYvvJ506ebqIvG+ibY6KuUurpvOfc7RhvuGIxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748848794; c=relaxed/simple;
	bh=0myxy8jvY8vhVrk0ymwfO7wDwkEHR+rq3byTBH7GY7Q=;
	h=To:Subject:From:Message-Id:Date; b=rLL6go+N4oJJCo0F/pa0/1Y2KBMzkoDc0rOXBlPg5Ambb1BzIyoi2BndQYoq9eog7zmbZ1RgGRtPyatz52aG+xulK9yv5xaDG6b0FtlmDQB6aTd53dNgZgFytzx3vo4VmT737vUOZzB9kWbycERHq4Jj2d72BHOkP8zCWX8+fck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tBnTM2s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tBnTM2s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2769C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748848793;
	bh=0myxy8jvY8vhVrk0ymwfO7wDwkEHR+rq3byTBH7GY7Q=;
	h=To:Subject:From:Date:From;
	b=tBnTM2s62VfVKauHpNIb11Wwg3diRdYYQ9XPpUbe5M2YDdCpZxAkBiuMcofVbJmnX
	 VPqIlmNoNHmZbOZWEHCe29APAGDYVGmaj4SsMRvOaLVWHaH0gOZekg36egGEts1r21
	 JdsVUJZ8OJaTlYQW2KJbrJZOHix16Muc+LKBcXfhAnmFc+RyW5j0oXVaoTrgSg9OPV
	 P28bVzc7J9HRiprWIhbxZjnOSWSblQ0L89shnlzl5sJLYcQmJE6/AdQt3RUNTPOml3
	 puSPCiShh4SnigSzlHrrfEZvaPeHQ1Jc6T5hWwbg0b6qK172pfwXRd129cRGhF7kKZ
	 2XMWPE+P2gp7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933F4C5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884879359.31949.16318162583534857827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1304951b246828a927f72cbea9fb06c04057c987ed827ad53f13f69c17c3e03
Date: Mon, 02 Jun 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748848793
