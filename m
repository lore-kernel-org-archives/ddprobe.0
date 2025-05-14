Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A5046447
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747221597; cv=none; b=DbgoMab0z/mFJ/UPy6tZs4kmEr0rexTlroKrdGFxv4WCwuN7BMrSipW/xBZGJ3rGj2y5vifPlahxoGysSlQ2dYE4gHy3Dd/hslmkL7UjjdY9CYxipdPl5ShGV4vLZ/FD8QZ3M7UVYpka0smcalFBmjAzE9P8aUFBwmpoeJaI36o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747221597; c=relaxed/simple;
	bh=0FBZ5o6ZtKds7I16fg3QpYY9O0lb7VL/6xmRhCTCSHw=;
	h=To:Subject:From:Message-Id:Date; b=AyiGgP4xUCSrCbLo+Gmfr9l6Wk9afzXnb/j1j+L543K40nF9/kw9T+jeRGZxAOBxAQ+WzjjAdnNBZ3TAMayIrZ/FBTwnt7qvVMjyUwRfP5urDrTQFPGd0PkghS1udXXfVS9ZXwVhIy/8LWmbpnYh9Dv3qIH8HorgiHEswKJKw4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swFU3Uzp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swFU3Uzp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3CEC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747221593;
	bh=0FBZ5o6ZtKds7I16fg3QpYY9O0lb7VL/6xmRhCTCSHw=;
	h=To:Subject:From:Date:From;
	b=swFU3UzpB5saZEClmuRYiQhOR0bVH1HWLR5hEuW2O7/iqHa0jqtz6CYd+cuW+YIa6
	 wau2w4oLCbaHQ2nKwlzjH9SHp169EaNJZmqdXZlq+61xwGhbsaoQXe16xzqS1rPuBh
	 DwnzhAOtDnDpKWy+qGiVr6CPG8JhVlzztkZluG29gLYtyZ1/EC1Hat68pzewlhVLK6
	 qkVRvtm0ZNqyhA8rCyTWqFSw4pYXEkONVHtWRAYN4RKYosefk1i2Amhatvj9BGMYh0
	 FkaE0beLLqbLdv4z1Csm35AbQlaQLGnoDLhr3MOdegvR6gBry2V63yup/bHR6x5GYo
	 /dqwPRjYEU0ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F02AC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174722159357.12875.2829886696559521331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08ab9e605dcb289d5f589f5cfea69a7544424d0c38786869ac913a6ee9221f02
Date: Wed, 14 May 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747221593
