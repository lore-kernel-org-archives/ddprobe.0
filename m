Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028CE181BA1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712784497; cv=none; b=anGMAT5q48Cib6lB03U078EqV2EaLyH79Ieia2W60lKVMv4SR/uQQmGZqGJ2CqHb90yu47HQwradTQS9xgybtZM/hxCSPePBQ9JKwd4D7igRO0uFPegZnNJi5i9cd0HiQvJA7WZCx007hk1R3Jf4WewslW/oPLf/se4GcFt/MwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712784497; c=relaxed/simple;
	bh=WRvSuSI22Oe+mLKTf1RD4Fop2sMNYSgwe9aVUAJAPZA=;
	h=To:Subject:From:Message-Id:Date; b=QgGDYZiI2CniQZYJSUJQ6bgWtYOh2wYDtvVvj30f79Rn3TlhNopVlHjC6t5T+LQvR7jGOnVm8BtQvkyVIQdwd6BfBI0CKccsgMZ0GQH0nFsoIBPjJ8WZWTv9EP40hNmP8fcAU4ZDVXQCPAGsXRBnpnNNxZswSf4d+RupxacnBCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIlwv+BE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIlwv+BE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8EA14C433F1
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712784496;
	bh=WRvSuSI22Oe+mLKTf1RD4Fop2sMNYSgwe9aVUAJAPZA=;
	h=To:Subject:From:Date:From;
	b=MIlwv+BE8tKUkDh9DCsYNEVAO/mG93I1w29bc4hZdwOSwbp9HX/eZOI9K1ukJofnr
	 afss8K7NanMbnRXNiIoqyDz/HFPxb80+fhvd3a+UAjwZDLxlStd/cKl1Rh/WTfEG13
	 18dJvV8hjnHRmwCwzd/KdKCnqrB931kiBdnAVvrgsdCt2AIgD17NghWjf4WS/kmLKy
	 BNjCQBWa8Wn1HJtCgVZQAegVYU/utsxHRpvsSG7Oj8gBHU08VEyPUqlvVwJnesQ2Dr
	 Or7biGAd9txeF8JyyhwPR/RnxN51Vb7Si1tRfb5VnJ2z47TasSjHEwq6iPslaSFF3b
	 cRrm/tI8irxXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C945CD11C2
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 21:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171278449649.2597.9214051194736735053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a32a788e692a92257145365b6667e7f23291b91538bd133aa0d228fd284c34
Date: Wed, 10 Apr 2024 21:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712784496
