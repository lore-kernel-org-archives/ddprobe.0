Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D282428F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D0DAC433C1
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661591452;
	bh=GMv416y+fcZx8QFPEGrnGQ48CJtkiE3VxDnkahV5Evs=;
	h=To:Subject:From:Date:From;
	b=GcLpwUacTRSk99XGJEdo3GRNWmpnyQQekIp4UH5lBdOl8Mmeu3LAJ13L6MpU8wEAy
	 h52EE5j+g5MnhQes2BU81ofsOdXib7mu+6Et9d3+qte7xC9qRCItJ93lD1QOmF0owv
	 paZMG3obhvDZubV/wwboE4VeL+5DQkkVO8KS+yObYo5edEscfYbAhoAkdPylwJFRew
	 hLJ6qzP/bwKgwOymzmRShI+xANKT/zANg77FE3GxHVjhlU9JElX31Sya5KTEjlPyc/
	 42h/OGnZQ/wddanZhImLT/2xJXE5TM6KxcKRyghfFlMLCxwck+yXR0ONdlAOMbN419
	 10XJIgc9JQruQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 618F0C0502C
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 09:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166159145237.29064.12301934594944779759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b121223b059e9534676ca0562c04e13987639dbbf572c471cb63278dec488be3
Date: Sat, 27 Aug 2022 09:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661591452
