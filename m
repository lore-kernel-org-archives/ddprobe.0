Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3116C1DE3C7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744372794; cv=none; b=Lpem+SzLZNBVdMlojvvzM8SmMs7t8dTjBtYYNQU12k4jq/hSr6CJWHGWTwbGV7sRCCxeV/GETuezvitOz8JcqIiaSW7Q91M3eRpeD9QX64VSh8kj9R/wXsxPfqKoXg9K5bkir0DwoobWTCO7KCQxTpFDuwq5woyESoAMvSh9Hg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744372794; c=relaxed/simple;
	bh=cEbmxQpRUSDr6E6CLzfDpokf1dSmw1fMLmh16wibXrA=;
	h=To:Subject:From:Message-Id:Date; b=WTISqxKWA86trD3BeZNtaqj6OurWUayEYi7w5WOKHoW2Gwyk2ZJmi4I4MGyjsQavpvuZs3v0+CDfuY1a2cdl/3e3GjfnnBwb4VvAZu5r7dtx9LieIQYLo3Q6VeEqGndj9KHHmkcmmjTBiSB6IGA8JLKmnITjUo4LA76bVKM93zY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ye8WDJzj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ye8WDJzj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D75C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744372793;
	bh=cEbmxQpRUSDr6E6CLzfDpokf1dSmw1fMLmh16wibXrA=;
	h=To:Subject:From:Date:From;
	b=Ye8WDJzj5j1PnRBL4LuWwXdaFGaTx6jiwxoBEB9f+fL4CUJPm7B87bl25GwBn4wlj
	 ZDMkOEITRuB9nu+oZAEBORfdVP8aOK+aKzNh3+zXjLY8y6Gh3BBTmtu8rIMHIM2OAg
	 FNG+zrCKRln3tdUDRAggO29P0GwVZxnjhnPgpEQQeytcj9pOvTyfqp3jCRwdYsZ8xc
	 LRL93hPhm/Yc7IYjjGbiOH7nl4llZasyC0tfe0jRdNvEY+4Vd7wQDWAqdoVA8rMv01
	 FHnVFDxCmaZcgMVxo3yjqkw8BtM4KCk7I6zFvf/TntQZ5JcjFR+H9YZGC4UZSWIOYD
	 3LqueUCTURRcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91350C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437279358.2597.7735500478984398094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8315466c522938017e9ed7fcabdaf7a159af8d6584a70dda2ca8d853a9aa314c
Date: Fri, 11 Apr 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744372793
