Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37B30364045
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779955354; cv=none; b=VIzGwp6Qv71Rp7reJnPf8faBeYTc0Ppi+c8xdO7h36TBVSDy+kUpF5zZ5hbcC3Lumywk4mHrwmkHxqNWDL7aW/eXlYna/AdLisvILJETiW66JdDW+Z4RqdVnY4zNcqfHuDQrpbNCM29/45gRMt4kUXl1VVW/3GCzwH56nXKGbxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779955354; c=relaxed/simple;
	bh=R5X7uH9KRoY/8JxSw3UmljZFd1K80QTkzzfzMvWAjqc=;
	h=To:Subject:From:Message-Id:Date; b=uPY9XachCvPfmaMvt9S99xSroi6iloaSINQlQI5wf1x3r1C6DFeN9M0fdf4yS459cmOyI6UohriZogMV9RzVRk4ZFFduAMrF42Hr0YWHFQON+L3YrVKbwoqAUl6fnEa38on/upIZgI05su/YsM86x/beasX7ADqfF8T7u4w3JoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cS/DqRJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cS/DqRJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C15C0C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779955353;
	bh=R5X7uH9KRoY/8JxSw3UmljZFd1K80QTkzzfzMvWAjqc=;
	h=To:Subject:From:Date:From;
	b=cS/DqRJwtz6H5plB6a3SSSHKEHkMoh835WNM6PzoLAn53CKzRRTKmXFojgkQiDa4d
	 fS1LgXCTS8OX+1XOlN5ePCKHLQclmMTLHuBLYwG0PVfTPlflEDI5SW8Ea+uqRi+Cf6
	 FNmJKUUH1uGuURgT99j9w0VgrK6UlHPc0LBJu8nmYTzjCwuCGQ2sWgaJIVL0AaQ7H3
	 TmnxYrQY0j69TEry55tU7uqn5mP3uQ+PxZ4L1V+aR3cGTix5CeOEOviQcCGMS21N6M
	 F3f8Qk+zPi4eFYS/b0uOL3h+43aLH8JNB5LJTyA54qEOSRkTBDXRHxVDzmMTKFXv7b
	 KCKHKJM08Mkug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7DEACD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177995535367.29358.18250580773137486173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2c1c739402169ed3542184877dd7f57446d6fd121a887e6724cf60195205f0
Date: Thu, 28 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779955353
