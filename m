Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323C87DA7F
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744022396; cv=none; b=UPrG/LuAUluJD2cTbZ43rg8s9feldt0tA6w8gd/7b9rrg65YhwHZtOT6XUloBnOjl0eOnlRwnMBM/FZG6vtUxnGkDqjCZfSkjUVp8/qCY4MG8kqxwA0jfRuBvLgFc7TrZxzTm3RWNgCa8RDFXxHqRrGl+a8HwqF6idDv1y1pcDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744022396; c=relaxed/simple;
	bh=PxWKCMIZH8LYEomrbIwY1POBeqXogLSoZ6HwyRfrK/w=;
	h=To:Subject:From:Message-Id:Date; b=hvhQ9U6OuGjTgYE6AQmxxgSQa7zyYbfW7+k5bWzegC/oLdHGWcI0sdcDps/JfQzX4C+dMI7iEZfC1TFvGuSELf03j+UFPx6yQTi3CXXdlHv8N1od3ncZrGeeyLJkQQTZzyIUl+c2T5kpWRWTFWH+DeZHUVqgntVLSadF4l82FcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUdJ2GP6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUdJ2GP6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8B9C4CEDD
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744022393;
	bh=PxWKCMIZH8LYEomrbIwY1POBeqXogLSoZ6HwyRfrK/w=;
	h=To:Subject:From:Date:From;
	b=FUdJ2GP6LO4yD9AFZp5BzJ8c7ZIuoEaVC2HNe4wD9RCUEk8qWgsOPw+2Gc6/NDeVk
	 La/Mk+N7J6dcaFhlg+HI5814J9i857T7Dd99daL2VO2VaPUVmI+/oyc0UkD8gAJH9o
	 YyNrZ3zQsJbTD2yxyJhM2iYrxBZ2hkhlzFmOCAkY2KCj1r84K12xuSgJCYNSMC33PZ
	 B2S9u1IDmxzgj01KqIU8c8F5kCULRTnG91Xr2JT01IgrcvfcYJx61a0nd339wFLhP0
	 8JQelNgGYMxb/vrViaF7ni1grg31/b6hgcHu6snaiX1LhXKjoJ3EazDatoEO9NhNXV
	 dUz3/+gA61FTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 955D2C36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174402239358.28905.12767087333057473477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36827b9f6f23fc56d43052053d05018cd0d0f27856c1975148c9545def43913f
Date: Mon, 07 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744022393
