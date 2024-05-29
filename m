Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66228157E84
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716992663; cv=none; b=KQTpbKKmz+Yz8J6m8ph8Oae0QjJ1bD+q1yo386JeX23Wep/UiIis3DrIHTKhhRFE/uPfBDe4lUyJIQYJhr3EGVdF1r5PEaSUBN2rCsiKEqEWQACN3Q7lVdAMZf4XhIqzb1AaVjJdoksJYGH7mALa7madD8qyr0cMhYlL7UfGaYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716992663; c=relaxed/simple;
	bh=tVm41oVbNp36e7eTuNL9vYBtWjTWwR4EezdDPcMMt4M=;
	h=To:Subject:From:Message-Id:Date; b=pEKFmENmCjL47/CuxSRc/gYxPaPju4VoJi2T6Zy3Ccvwy9IshBhqmTYAa9MCTjlQvBC/RXzQr1GMMR1jqpw4lym51jVgge2fNIhMtlq/51qKoPRdqZShrnO0Gk9lj/qbn7NBAh/TxOQ6X0hXZgmZthVUon+v+lBJJdILALx8rlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmISdPLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmISdPLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01DE1C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:24:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716992663;
	bh=tVm41oVbNp36e7eTuNL9vYBtWjTWwR4EezdDPcMMt4M=;
	h=To:Subject:From:Date:From;
	b=EmISdPLuqD+BEtEL7jyIahQ2cUzWLLAWAxX43eemAfUm8CsYQABFkA+sOU9OZZ5ZQ
	 t5FKKRNwUnfaCTkKusT8AomxtpeSbKQFoxCmJwruLlIdASLfAiC2YyD8bvJqWvPQqF
	 QmKyqE5TeaQ6dKmNU0WKKChJDnK8iNrvLbKyx86xMr96V+cj96v5Upb2rexjjw27r4
	 Xzk9N+NOMPkFvvwC2eD82VTWFA2kya5xQQwSdL22nf3+qgs55soB4B2TEVcE+tHPWg
	 0VlmbQubQ9sXIR9pngCqBkz+s3IyTg0zUDS5xUd+W3OO5rwNnaR7T5x5ZsFMTtFkfp
	 4r5/m9U9SgTzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA9B8C27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699266282.1196.787368892136572888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52ffd2f67f35a1e9b9eff96d22eab33c065ab90b262abdd7b522da50c7bb6cb6
Date: Wed, 29 May 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716992662
