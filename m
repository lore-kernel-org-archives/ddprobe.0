Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4D41E9919
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774161894; cv=none; b=sJc00YyunQh+ZRbz4vXy456kR5mWqIrIwGbLEE80yjQffYRMJ8W/y3plZ6JrycqK9zhnajdJwJQvHhAyeOqjUJcL2UwqhwAKv7gXQ9qAHojIdhO0qcL3jlTfEepRuGMYfOUfEkChe1zvgLFmWEjqxxkDbg06NtOs425m1QmRqEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774161894; c=relaxed/simple;
	bh=u4nQJ/liJdKCn8HZH+d1ZJTJpuJSV9732i2xNFPMfNc=;
	h=To:Subject:From:Message-Id:Date; b=QMb/0srHWgUBZdUoi4B0YlR4ea66Oq5UWdk7g7XVmdI1P7RBvJMsuFljc508UFGKhKxB0c+3jh43TqaQ0IMnFia+K2Dc+Ue1sP4I66pU3CFzxaadkSF4JHzI49Z2bOnow5lxdeFIIIorkkP0yvk2smIcbY6z/ZgxWm8D6Oh85m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jCSMZJ8E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jCSMZJ8E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4136C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774161893;
	bh=u4nQJ/liJdKCn8HZH+d1ZJTJpuJSV9732i2xNFPMfNc=;
	h=To:Subject:From:Date:From;
	b=jCSMZJ8EPZjrKcXYgyBSozSDPQBnLssLgig2Fu0J6LHm/YYdsXB9aOJPqc7lfgX0n
	 /gny3PYdHc/NAxEPl+RJp4qLgg9m79D+OsbrGX/5hmHuuNABc3WZS9N22lLdkGoLwq
	 HW243/AzGNrcXTdU8JhM+5PI9MhMiUuQx246myVzWkxruw/MbnO0J8WVRWMjWbZ3y/
	 wTk+EJNJ85bF78VPfB5lGqC7SN+P72Jl5i2I+2AkgYJ6EkSXl5lgQhH8ZY+uPktdB0
	 AI9HoUH//d2n8AZLwAHEf3yumcMKKUuiiQHLbL454EUHeZo4EyEhu+w6PaAefDhyLu
	 sXMLbqcqxVm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9A6FC72AA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177416189357.16191.16254284990134330684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 441f267f044af91677183afdc2686502714dfb3a3a50b95bdd683a85fff6bb7f
Date: Sun, 22 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774161893
