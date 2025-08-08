Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA88367
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754620794; cv=none; b=QTFqsJV7WvnE66H6vCIZEILT1CQgiLkJGQ8w/6YaL8SBaPGFAjI/INOC2QBb2QvQlILcV3u6Oky89b1EDme0irAZUiop8SY6SIJTF845ZeTr864TZQxwKXX6HvZF1brVOqD0ZzQEANvLWOLCppEbOG0JWozxl4RyKA7umTEP3+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754620794; c=relaxed/simple;
	bh=dNgEGhkWpwuvVu3GAdGpV/2faPUpiWp86wH1oObBn94=;
	h=To:Subject:From:Message-Id:Date; b=cptPIeojIbCQNRz8/13ny6pXogZceTXHNRJ0Etq+ZtP8YVILr65qj14AzgCGx5WRsGCpSlGRNKRTzcCxSLwWfp2SuyChjHxAD7F3pJgHSucF14G8/Mwn/ooi93OtN46ULyb48f4gUVN9133OggrLGTXjWxy/WScAo60kpV1y7EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbJae0NM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbJae0NM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB030C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754620793;
	bh=dNgEGhkWpwuvVu3GAdGpV/2faPUpiWp86wH1oObBn94=;
	h=To:Subject:From:Date:From;
	b=TbJae0NMoQsDt9nxuDEiGVHDkKKOLW9rSiYIQZtBqhODBqdmLRZ7AceolGKnJ0OMW
	 8v3xzcOJjOMBp99E+w98qAeVcHB6xyp43G+CSqsnpgKkjDIJ5XrQFRslKSgFCcjeuM
	 pcqB8jzWVoSg4lv9tnB/C9TKx2mevNJpk2O1I3UK0+zAh/gqxihFXoe8fbs8jXw/2c
	 UQTiaOfqAb785BL5nYjHEeL9g6mMZXxFIrWk6ZaQer9hEUutVPKpGor1W19mUL1P0q
	 tbqFSr8OvoNC6oTtnMhuZ3jc+F4Bt4bDCFtsWP6ImNdS+CSoKY7k62JmMU1+NFfEgu
	 2WjnqzZy28z/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D76C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175462079359.2605.659268060936347591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 482d73ad55ffba15213051333f8445792d4e68f3ab081109bcf299c3ec03e93b
Date: Fri, 08 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754620793
