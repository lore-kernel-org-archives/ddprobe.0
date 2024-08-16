Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676D81BD039
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723818354; cv=none; b=Vxy2jcXS9zVhzxMoso5HHPlsSLWRkzsmpJXMU8Ulb3oG+F0aPtMOvy6nJcH/BNwjyHualB8lAwYwfgOOJc6OWmJWG/SCa5ebj/88FbNc3jY6EvlE6cVAlrBUd1nH5ZL9m37/AYKztSxFG+xkA8Huu5kUrdlP4vAe4zkd+yiv6hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723818354; c=relaxed/simple;
	bh=MqmLfde7lYOA2DXZHeVZ98kGEovuqiscNDbqBx0dGUM=;
	h=To:Subject:From:Message-Id:Date; b=cKnRVgxor5zQVLrKRZoQneAVPgC3h22z/cm+GkxK38B/eTEoUu7SVG7hHeMflBxesutGq26Tq1IQJRLfohA/9wJDbmKuHUne0IpXSqstkSonUFoch+9Jo6aT2o5T8JcQcqKcxwZ+/p3CefHDnT8ea6nYcNQ1rXGjbpAuBZNgxJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JD3rslBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JD3rslBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C96B4C4AF10
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723818353;
	bh=MqmLfde7lYOA2DXZHeVZ98kGEovuqiscNDbqBx0dGUM=;
	h=To:Subject:From:Date:From;
	b=JD3rslBng0IUDkVGWGEnEBHpUr5abKgFyGG5kkMKcvnXjrmc9tzxOre8LWzU9P1OA
	 pKeTAa1PXr3htRCfjktQF0UE+l5g0WqznCbNXhWtQ7LP0nlXCjot0QmQwEzDTyxM/I
	 bwxMik4waKti4dLknVIFz4oWjguna2zh0FMN8zuapY2NQwDTAAIWoj9o4vekKi8ZVi
	 VQYP5oAv+FWG1nN8bpJKSdZkgdO0cNOPiggG8/mrlTsXq4fMyJTLxjR2Pog7zYqOr/
	 7SFepVzb8cyS6uyw7vT2Lal46LxxtJoaIDb4Bk1qe8IerPj+btfDAndGDCjpYpeDOQ
	 4AR55HJ8AJYVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EAFC531DC
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172381835372.10039.1388864458765552520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f029da26399d359ff347115527bf83c8e3c77e0b94981b71fec91293e22f1def
Date: Fri, 16 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723818353
