Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487C7299AAF
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760498994; cv=none; b=kJjZhFE0FVVkxJcnqwD/fNmfC/WE8R6SE3cLpHEhWI0JLXCT01oebC3EjjsUPzhy9/vL69Js8RzFWmV5r9Br8suB6OhA2ggTFw6PizsPTRCpPPhyMq0TYiFVlw4mXlM9ey8QBZyU5e8Ju118o9QVddnP7pBXWaxLO0CHUN4sFXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760498994; c=relaxed/simple;
	bh=7JG9xTCN7LQE2QBFUkMGoduxT7qffPn34RGtr9wTQ8M=;
	h=To:Subject:From:Message-Id:Date; b=ppJi9z7Lxnx/zDg0gSzzYaJZwvmuCHaYkq+S53j76p4+35mSrOivSRWixegFBJiR2t8CtVuJY7/0+fBPq6WjHu6pfmO58+HR2LLpQllBqtx5zW2Mgz+ZnRf4Ive1yUoiEihtg5Q6BCzrGzvteq6NQVs44wgQ7exbC9dBmbks+UQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Weu71mzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Weu71mzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF218C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760498993;
	bh=7JG9xTCN7LQE2QBFUkMGoduxT7qffPn34RGtr9wTQ8M=;
	h=To:Subject:From:Date:From;
	b=Weu71mzxxd0CAcT2mS+QnfF+l29yDMqERA5wRLLKJmDfmh9xLpIzPI9um9VLg5uH0
	 CPP3OB1lmzBbhJJYqAh+ubHyl4bAMrX9HN08MKf/JKMAxJuvzCqP6urIDNGfUtfcap
	 Os9Q/HilkF/OEoyyt6CO1/6eHPvEmPrGNg7Tne+lQxw9D41atc+lsZnMPveNmx/HaD
	 lg/VhKf1U4rZVAUC5lDeD1gIgwazoolxFo0QbRU/IoSXkE5LSHcKfRpKIMj3M2Lw1q
	 jPjWI+Ypo1jYZGVQ9RCDuVmSOrEFAyLEGYCRBEzRTjvUHKqE8dgPBkhXMOJ4HY9up/
	 LmecZAaaPemyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD67CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049899362.28906.14559647334597462684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96d02f210af6da1332f562096b2452cee3041227162ee01eb69c2404c13694d3
Date: Wed, 15 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760498993
