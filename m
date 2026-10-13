Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539B350C29B
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791910834; cv=none; b=oGwV/dbK9ltP0hDvNHG+J6FRiPGkVws9zeF2NhyBppQQOEpL5Q+yjiJOlIyatvjdzpQ/u6P0qnpi/0rNdqFh8DH/Xjj3oxVLzsr+YKQNx3cd4lPrw0EuMzZv5bf81TQQjMll+RpfwRFL3y805R+yx3vfYWpg8uf92zIC00kjcM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791910834; c=relaxed/simple;
	bh=l5nUeWaaDbHQ/zsOX6vDFw6B0bKPazf5gui9Kdm5Yt0=;
	h=To:Subject:From:Message-Id:Date; b=MGXxe3NLZg5ENWxDelDZllvhRHwgPmba/HRJVNA1BPyWkefFtE7pSRLChUhmjVtk8AkJiO3MKJ/q4o77rTmVKfrUUOOPf03+FVKZ5SCndsphqSKs+TAdMMNQ+0wMhif38pE9vvvCkSQM1HBuU5rs3GY/KOsj9DBy+L56Otv7wfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nm2feEih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nm2feEih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12B97C2BCFA
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791910834;
	bh=l5nUeWaaDbHQ/zsOX6vDFw6B0bKPazf5gui9Kdm5Yt0=;
	h=To:Subject:From:Date:From;
	b=Nm2feEihlUNmPRmwjfqIhLDx+ywqFmtvhxh8ov7DS8hLJrmHMCfjF6s6crMX+62P2
	 fQRpAiBdNDG78t05pngU36RHCQE7GrWAVsQ5kRBn0aHhDMlJrBMuE9oPS5vMiUureT
	 3mwcfE4R0fDn0DlGOsOh+rdKbxShhwDo6LZykjU5AU3h0CCLN97dWroY5gcXX7TBMN
	 A6UR6ixucv7a5VZyKR1nyRqD+DAZZMtSywRQ+ACP06PqFjU339K630qo3AXilyz7uo
	 ylkChpqvLEfsvBNUvcmXB3Q6q8CO2D08w3D9+Bolg3SVI3+WmGipFKxxk8myQBAUyB
	 D9wEwPIJL03yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21D1CC6B19
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179191083371.25161.14455020833274184470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d143ec44d84e0c0e5f604b1555d4193c2d59be24ee16ec1b99df222a004f091
Date: Tue, 13 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791910833
