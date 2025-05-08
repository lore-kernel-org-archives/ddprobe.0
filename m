Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335902882C1
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746724794; cv=none; b=LAsBICZTAJLLN1TsPSmtDhy3axWPM0jbRYBqKbSxhzbIoGBmmebAb+fN6bHgJu4KKQJlvB1OcZGQClCO8ywxy0mFCCYqWJ38O2vp+kz0ixMq6t6y+K4x8Wzhfm4ebd6HHuY2GV3/s5Se8ppYwYCO8YPDyAlrg1cghFTvTcK5LIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746724794; c=relaxed/simple;
	bh=acOanF4TrQgBAiYFHlSZXLxsWmpoq3C5wC35DCGpYfY=;
	h=To:Subject:From:Message-Id:Date; b=bxkuNyCq2RbzHFk2IzdRH+2VkgF++SoLYeqaE1IjlFni3pvHf/5OkdiXdVAMkA1qoxotfWU0LZP7QpIm0FhWBeijJiyZEHQZ0WFp/U6K/Pp67UHJR2tknznBdoabEe6oECLb9UGCd6mLDDGJwEYqhyidrgOtd+znpXi/2uXDMdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXItPgfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXItPgfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E92C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746724793;
	bh=acOanF4TrQgBAiYFHlSZXLxsWmpoq3C5wC35DCGpYfY=;
	h=To:Subject:From:Date:From;
	b=rXItPgfSyXBGiCQ5hhMW1IiZKbZiLfHo3Ivu/1RnjOeRsNWqtLuuuc9Lrb3pWycpw
	 ugi9kUf+23QxYZKIB2AlQNBwAB6IBF0qYRr0xIFIH4r7CjKI7P/IdC91Z20vPL4frX
	 qwlyIukAv6atAhhyY2Ne9UpiViEKAjDXMRjgjwo5KedKHTApZ3rO4VUzHHlcO5hGeg
	 LJ8kUHDI0QO6yW/4SN88td+oZLAtzxa0Mg7XE5yeOn3NnjaeUeHCefXF+HsK1Vh0ui
	 m/gLa2nlaNHF8D/twd2jeSh/C4jVlzW4nsMosPxviKsFYBQsnmHuKKFuOkHK/GpVrH
	 r3YL1sF8v+Vzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB6BC3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174672479357.28412.4255574774170330717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 249e7fe566fee928e25b500ce623baf01e62f44aee292b0c71984792e07d5a75
Date: Thu, 08 May 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746724793
