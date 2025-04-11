Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9271F5842
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744397994; cv=none; b=XklIZoiKWznq9orZBVh2gnAekhEHiCENnDq/jHvhi7zJbic1OPdvv3AsffxL30+0YezzsVAeSrcJZx+KCmmsqDkObIcizvoD01hWUCs/RA2jbBwpvvCdgFXPMeDOr8RFGcTM3iHHmoLtrhy7vZAjDrjidkXbUkEEPxzxBFNCIXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744397994; c=relaxed/simple;
	bh=oz0lVjwthVe3vmKcrVR5R9wffiNMvb3OYtAXl1wZL9c=;
	h=To:Subject:From:Message-Id:Date; b=utQovYbAGkFXsPSMhApjg4siHWISNToli0LiQykssKo/nthre1UJcd8ekCKNWBikn33XKUVLgBJ5OAwENQjNOwciQmgDWdC6aMQFrKnLfAyJWFqH8jJz+T7iI2zr+fOMoL7N1Rky/QxTMVeravN/lvgVYT7b98B64ujNv8F9PtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q6O0Fs7Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q6O0Fs7Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5770C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744397993;
	bh=oz0lVjwthVe3vmKcrVR5R9wffiNMvb3OYtAXl1wZL9c=;
	h=To:Subject:From:Date:From;
	b=Q6O0Fs7QP/qvt/LShvQGqZvGjHQ0j4PF8/6fDf4JhMZzgwxC638hd8PGEet+5kJ4T
	 VkijiFNJbKbPKuesc+/CrMxLxUxFFOSHPR8fzvEAw73RfY8Ja0hrbR/Uhg2O7hAuAE
	 vgsGKYbwPUDOpz+Y4mq/MmvRJAbKsad8O2hbberU62bWQfQ6upTt5d05BbG5wuYlkX
	 +3ocEA811cdHwWgcta+eWIYFclH4GBDn5WrK9ZePp6gzG1Gn9ZM4MWZg9/OjNeSwQJ
	 HAtR6GIm0OjvnH1BTF4OUlNVKEE7CEf0kS2+fM2up2H+mmEVn77hgdtyOTLLL+IBQx
	 nb0zREbXL98PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A39A5C369A2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174439799365.22682.12319263238132988239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb33b2b972084dcf9b467bbdbf6509ed52d69b240a8c7f18f713cccafe1a099
Date: Fri, 11 Apr 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744397993
