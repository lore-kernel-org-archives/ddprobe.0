Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7031EA91
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754683794; cv=none; b=JEoWhHxRgB8+mUEY4U5QK98p739xCMZiNpt58T2LG5eDmD/UCj6QfexmnaYEFX0DnFhBGlqi/1VNMdmWXI15Lzvd9QgBWX2vyALiI71IgP0+hEaho93QQob6UAMYLLTidHnXvW8JQcqBKQ4U46hQZiHmmy08zsOvvqu4w7rDu4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754683794; c=relaxed/simple;
	bh=a1x1Vbrdba9TUwBccKJ3+NotRO+LvizzPqiAc+6trCI=;
	h=To:Subject:From:Message-Id:Date; b=RHEulNMe+NsXHAD497zzPxLyCVSZuwLEQcW3ZTgOkxJeGByFNhizRWNutfL2nKcQzRNae6UOLjfakZcnknP48eJv+sG/rxhQrvCvKAPTVVpbgeNAxTgvwlfHSS+HGc2J3kfg4JKTG9RjuJPdSy01J+XnGlz1t+8ld9CVH0gvGtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqGBznjl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqGBznjl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2803C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754683793;
	bh=a1x1Vbrdba9TUwBccKJ3+NotRO+LvizzPqiAc+6trCI=;
	h=To:Subject:From:Date:From;
	b=DqGBznjlUHtHKOCQnAZUvnUbgq7gdq0oySkt0IX0dS3q/hIY5kgMLCsfg9brr/JUa
	 RKHWvJ36cFnoMPtnL12F+4X8nDA4i4a6sSMnH8Ruu5HSCLXTU1C5ATE5khIUTsvb99
	 yDJpyN2C3qGC6M7elb4S6HgfGcgY8cXwf1CRpqaPcaPJOnIyTL5LdDiCzrm5AriecY
	 rws4scWKOThNRUhBL/wP7ZqbvtlDPB7/ujz8zTKEBr06sWCBF/1qX7PlfsExJpUhwx
	 SYaTBOVmspNDzuKzkYXrktcfstQnYpZeJNNz/L8K3J/OoKR/6VLDH5oT9eTmHYfcgI
	 fw5JaUVuRl0BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B1C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175468379357.10970.16122816654623046168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c298f318e723a6d81a9cd79929337bbb1a749a646943fb9fb73af58832ec9fbe
Date: Fri, 08 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754683793
