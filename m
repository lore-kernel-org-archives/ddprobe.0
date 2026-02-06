Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D73333555B
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770350034; cv=none; b=o8nkFjT4PMqnd4EsclTblwB0BcxfSJl6YmhBsVEQyIAfZQ6MCq9SCbUMR4eY5VHk1pSvVQN8F4SVMtSugrUAHw554SrRTJq4XkhtbiKTbO1qRIWl/NvUUh8l3IWeAB+0T7KyfksPRU+sxDR1YzqYy8ZZjBZ6XQ7UuldqK86bT8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770350034; c=relaxed/simple;
	bh=CQvBw/poz6W7kcuNQVZ6uDA7WGxSgX6M+UxQbc9xK4M=;
	h=To:Subject:From:Message-Id:Date; b=WynESw9gNpB8jGv21oUT5nk+TmfD2z6OGS7e4otYPieM+SAdhI89AYexGt79eqjlbeEuejWqrS6bZ6lLlaetw2DMEiAaPlHIeNh25O5C3q3f9m03QwmU/drIgTdb+rSvrFMRGNjbDcR+tePhSee8E4DsaIQYBi1n4cdlEnM5Jc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rBHJwqN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rBHJwqN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B3CC116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770350033;
	bh=CQvBw/poz6W7kcuNQVZ6uDA7WGxSgX6M+UxQbc9xK4M=;
	h=To:Subject:From:Date:From;
	b=rBHJwqN/Hpfni5lOV8AGOBNPoMXsiHYE4umZj4dVjdFoq8CQ4kvd70DoiyirUcHPz
	 VasCtLOqBP+32GG3ctWz4gTmZ5Q6geL80Buvb2FSUA9VF001BbJA8imQtYg/27Qlxq
	 HvfYakCnw/KgqOs+rHT1flJtBFAGeugq/Jz4GdO6C6MxrdJdxSJuRWmo6HjgGlli9D
	 IUg5Wpm3cIJYmU7m6I0a/mrB/FjZb9581ikWh3Fw/i1G6FR5GpaOLhbwwIdumfwW7d
	 ogiAc2Twr1qqo9Ds92oKwhZB7vq+jF2eqvXeZzA4DKXC+cmWc7KanxEnt8kINrp92H
	 2euyoqPJK3ZhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC59E91297
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177035003362.2867.12433710515119513549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe6b6bc08d85bced53db2bb32503a188ea327194436cb68d3e607dbd3b867139
Date: Fri, 06 Feb 2026 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770350033
