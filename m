Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244E0350298
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775277934; cv=none; b=kwShKPinyJz+JMMaY9JO3WkG6HD1IeWtvX8qCAA27xY1xxYbP8q4rsg5XUd9s8jNK7Dsu85EQVtATXHWM0R+ZVmjLhVeW4tS3t7NORr2qX9ZcC2ZCjCbsofZH4kK/+9AslYgrf88yHUj8BAOz0jS9iuc3afa3rLtvOEf7C9xRE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775277934; c=relaxed/simple;
	bh=X1vHD+P11W2vB7p6U2KFEa2VRTQOSuorf/I1B8OE2NE=;
	h=To:Subject:From:Message-Id:Date; b=K6fv51XmeWxUDJZHFMl0witmatIEBK5gYr42XpcbL4JxnujFQSijyn5V0kSy3bFXd4pVnB67+G3q/udv9UcA7rLcE5b3pm4p+hj5/0DSYa+Jj4dtO+xF1dn5S5Xx4Lh16EWfZcVgieR56zUQ5EF9odFI0sOJNHda53Z3pYkb0mE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K56htUdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K56htUdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28D4C19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775277933;
	bh=X1vHD+P11W2vB7p6U2KFEa2VRTQOSuorf/I1B8OE2NE=;
	h=To:Subject:From:Date:From;
	b=K56htUdDCKpYGDymxj+pEGrInvDYmAGcup3eJX5TPmRa7xyp7Wr3xYB5Aiigq9Aam
	 WcoZmQZYqpr102aDW+6BCK+vJWAl8Gxz+Zx1t/nQ16ORQ8bbGI4RlD58/vsjtlZcX/
	 By865yYfRwTDngsR6CizGuzyYaoKw1GfgpaCfg8vFWo7OK6cqzUeJ5TtH1AyacKy2U
	 Ve+T/teOk8uHx+lWlWPpKgva5iWnYNrvKfa0XwuCo/T5daVMyPRPWE1Zr6Ok4Qc2ce
	 oB5TQ9H87LFVvfF5G07SsXMoqvVrQI+UbOR0j1YL/DL/OczJhKUY4SUKs34PatPH+C
	 P2Vpnaj9C1/6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96E3E88D70
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 04:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527793368.4102.11698379756277340934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf026909511ea0c74ed8dcfa6c066c4437532ad2a8c2950390a71598ee576392
Date: Sat, 04 Apr 2026 04:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775277933
