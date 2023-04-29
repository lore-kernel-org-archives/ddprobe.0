Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4014A17CB
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBBCBC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682769965;
	bh=ygnSSLjSM4j+XZRBJ0zbcKsJ/IMEuELtrKkN823Ve8s=;
	h=To:Subject:From:Date:From;
	b=dHb/bKuA36AagaAXueMV/THQudReHHnX/gjiiXGiJajhiX/XYfof6vTFWfaFftmxg
	 EvM/i7CvP3wJrDCBEgmp0qPMEaoPD9dzXuZ40fRAc+6/yp5RuB8FQJVO3JYF8Vq+hn
	 t8lyZQSLOZGfWcU0yf3y5zW5ay/kWTYoUqWPszSJMshVg5e07mzOWgov6IQUNqEY2h
	 YALxH8ZlShtmgR8gulQi8jEo6JVBfFS0tNCPvlGRNxKZxkHM4Y4V9thdPd//4cE+a0
	 eH0Q70Tfpucz6UybXudmY8eV/GLbkNlfUh2/Nx3WtGba8kbQi36QixE63Ab5wb6L/A
	 djYG2o3xj2RpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBE3FC77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 12:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168276996575.3842.2533593710103102291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46f6dd7d4f627fcdff781f54c3f93a50450a3827ce6eab3732f26b0845b2bdc
Date: Sat, 29 Apr 2023 12:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682769965
