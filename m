Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695A9284B4F
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788402034; cv=none; b=KZkA3AyMRaJOhhBOiZctURUqgNXa4/xUaMmnOv3wEegJpzci8igL5GUm9fmmcQv5PIDQQaLk4Jt5uC9ny2dWQkrpz0q7n6Smy+OER/Su4z15VdqHADkikRavj+oTJSwZoV/bMISdEOJCEarLvE6YNj3h/zdY3dHmwFbcftWKEcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788402034; c=relaxed/simple;
	bh=9m37GbkTKkm0ypKAR8SpFkbphF3S5hYYkCqaljQHdpg=;
	h=To:Subject:From:Message-Id:Date; b=RaxmZ2+moy+kKssm/Foi/HqGTjI2UaZKEa3UTMhPGQw/+2qWdOoDOQgDBduH6CzwGuolh4rdefP7zNlZmLqMJ0Xn0SHeMiSimSTv6FZQQjtQfdkTCvXJ3UXv5NCSvrEQ3Ad7eOKqJqyn215APWW0HoylIu4/lxMsGFXeCHWMOF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTHL1dUu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTHL1dUu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3EB4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788402033;
	bh=9m37GbkTKkm0ypKAR8SpFkbphF3S5hYYkCqaljQHdpg=;
	h=To:Subject:From:Date:From;
	b=gTHL1dUuzEpFelP0OJqXYV/z+fydloYZyBH/2NDmt6evgqRgBNSttTX+vkALWEsVK
	 xMMX+b0E6J1CBDXEBPHw/bGS+jLcDv7RNu84sWi+cYOKk5dcukSEftOIkGKsb6+4Bg
	 kUEoYWfJw0dHueBbtYbxmi44oyuAeAZO1hNOfmEf5Nx0+G/H+BfQofhqOUQGvSIUds
	 ydjkQzx4PhFjR6It5q0xcfYyYVmk9vAog0t7kLjWDcxn4gN66sJwA9E7fNxDt2ZPVn
	 vzaRYmA3oYK8lF9tjM29NpGaUqKKmTppB7+ivfgb2NRSjxkFkrwiTMV+kFx3nYTOxN
	 O/XbIbDPhLmWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21F0C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840203369.8237.11231739887065697466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464558f0ab491bf6e12b749518a6275079abd5a821e06dd1c13c15215f0ea3c4
Date: Thu, 03 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788402033
