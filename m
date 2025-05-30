Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F984685
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748579994; cv=none; b=SOguWatlxJRYYB7JkkRnGvWNDRd7DpCEspp7/DkpdZAsjP3S4hn0IKt+FZ3E9IyEkqWUTzONAXzd41UONcaV2Uat7+/71Vg9ItkgMjoE6inJHc2nPXRVKfoTFcVJBHt+K/fQzdvu4p8TQdxrqXEf8iIv1jr5pN+RFPH1fuEOUbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748579994; c=relaxed/simple;
	bh=vnN6rUI0QhemIuQWDmGyyjGpfEMaZ4nRUFEg1w8Yp0w=;
	h=To:Subject:From:Message-Id:Date; b=SXsddG/j2cYr0LslqzX3T+24wBBfQHaopLi9/AQ7qb3R5OskZJgfR0vK77qffRXf0NG/1x+6G5sJRP3+iDi+egOlfSiSZAyCpllfFIkK3DDFGgrstHOA7imVkVEHaZdFL5xMPvWEQvTXzGDu3akZ4O9f6HNPf6IoXscsI2FM+k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BdZko3s6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BdZko3s6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4433C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748579993;
	bh=vnN6rUI0QhemIuQWDmGyyjGpfEMaZ4nRUFEg1w8Yp0w=;
	h=To:Subject:From:Date:From;
	b=BdZko3s627X2lw9C++2mEFuV4kWs5tIgPz96UF9u8TA+0vN7u3zE34hEG4M27gtOS
	 5oCb/La9qH+ZagB2+APpzUV1Lbo6rqSepoupcQRidPHweKXF11u7dYtQ2xeVHKVCD5
	 O4LFVNR//q+8XbnW5voFXdNXknoaoYFyo2SM0ooyFhkiWMmNTwCi9s6TmV2rZONzFv
	 66gd1MhPp5qlPOZv69f8VhETny8wl/01F/bCYBJs+W9ppes4H6PINwvM7xPre7FNQM
	 q7ohWcfe6wLjCTWlh7n6k9nR7Dkj9fvfm8nlbpmlUg9XuoZtweakVlqKWOsGTk+uTq
	 zRK+r6PUqeIdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F939C3ABB2
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857999357.22572.62137440300768384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4e7da89a996cf15423d9ec5fe54fa4427dea690240e035105ee24ac37583e3d
Date: Fri, 30 May 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748579993
