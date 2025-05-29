Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5712B21ADA3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748486394; cv=none; b=UT8fn2WCNZ05fnk02zMwlBEbG/nEIRDuOZbcJFpTH68832vpOyXNFLlSh8atJyB6wnpFdVb1vQH7xTgZStGLYYGx2DzMrGanD7l8h7I9Cf96nsC1O1jSH2rbEVH9jCuAz0oY2I5MFRqqq4Dp5m7Bydq+aru0kl+RYqgj5qtL4zI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748486394; c=relaxed/simple;
	bh=j7f5fOuckWT2qklo2e5KoI8ZjmjsmbjpQ5AAdMQZ/fk=;
	h=To:Subject:From:Message-Id:Date; b=skFgS0BzuVqkiAjWlwH230M02+bNdTNPyQpyW9EV7CeHz2l2D4lU0CC6GppSLgeK2CtzAX5LFkncXHcroFVLwiY5OhvE3gXJNckiRyUJ3qPTTmyDNStRxhVbLnTCbbZBSj35lW/reTVO9AvyAGQgO72isVUy+57m8kJGDDTdBQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C9/iGfkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C9/iGfkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C09C4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748486393;
	bh=j7f5fOuckWT2qklo2e5KoI8ZjmjsmbjpQ5AAdMQZ/fk=;
	h=To:Subject:From:Date:From;
	b=C9/iGfkldEHwXiVhDDlkAuVp8IYG46JZKLoAeR5ifkZRhFdwfE+7QfFLENGABWMjw
	 aT8LwNlNvANivHheLuPHuz7GNDtVFT7APHKDLkhhEXf45w5p9sAtqi2EKqZnGrrumq
	 08JfLkkp1+XYOKxMqE/KQP/jG0dVtjPzMgxNuEtl+eCEwHEd7eexTZCiOXIN5xSgIb
	 EoxiieX2J8t8wl6C2yH1f3TdNSGZz863MJVczbsDPuG9gW/gjAlv5EqWNe0sj53rAn
	 sf5MiuY2EBjCzPQyiLG1iuMbkUJMtz77z2hH88HfxRpN2hjzWOm4pP3AhojwFQZVf2
	 lzXyicagjaFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5E9C5B543
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174848639357.24249.5978868613244307600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372370aac4d3f3e1b2ae8a76779683734b374149a2aa99fd90639fbdb33d08c5
Date: Thu, 29 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748486393
