Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEDA1836FC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718605103; cv=none; b=b1YdrwGODKc0uhmVXECV48lJzSbzMkWDQXGOf7p7e+vlRy8/x7nVqbLHDIYZC/E1p50IU3PsIuiRh70JP8b36vEIaUoVf9h290VzNQXbrggrBq99bIymbz6WRl93ruZGONFHq3/dvBk2Xe5zGGg1rRSfVdhjDz2DhbS/Udo9UO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718605103; c=relaxed/simple;
	bh=XwEi8qWb8tSq/+HW0Ur7D4KpQ3LkC6N7YESmyIAL85k=;
	h=To:Subject:From:Message-Id:Date; b=SMJwICbPxzx8CCPUmkSLANml+tFhlpjq/abZVYPhvOatKxfSB+ozJT20tth+YsBvMH5rD9OhTko/jUk1Q07I4oiyeOeRJ6icYCJMnXJQ9sHerw9wZDljP5sd84R17PoYGNt+LzJnCz+q4xFsJ1nzJGKBWaYDr6P97QoJkd3nWqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChQb3ZnJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChQb3ZnJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0457C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718605102;
	bh=XwEi8qWb8tSq/+HW0Ur7D4KpQ3LkC6N7YESmyIAL85k=;
	h=To:Subject:From:Date:From;
	b=ChQb3ZnJ3t/M04g3oCjkqHwC41NEVZmZ4sw4kHKzNh9k7sSIMlEyNGnHZQp+fY7tX
	 4HeQY+L+XXsIeEnnCCzVdXznqyOzz7YSYpfWSve2emObEK+9Ms/icKUW0JH7PKtCnI
	 mdBnqPLXHlu7x+YO8u7RY6lOZGkZqHsEs3GE0Nf6I94xnNQ/A77B+Ci0oDzhusPRMr
	 L2Rmfdgj4IPQbfQzTMwjhPGSlKA7DkWmAsAA0/Y70IHDest6Zg2b4b3OuCIT8es62o
	 jYzdrWgFbeSf77gCVjpO+gzgom//0hTgHB3LcOD4xjMa1nLl5m6zPgPxSWfxMMtnYO
	 55OT1NOcmv37w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB905C27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 06:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171860510282.11838.1049262401849745911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b609066992c21feed489e672993559f731f876105ca036ad32a044d6438ae9e9
Date: Mon, 17 Jun 2024 06:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718605102
