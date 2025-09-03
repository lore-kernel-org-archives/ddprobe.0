Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2443A3126BF
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756919994; cv=none; b=BcvFeXOzq7X5PZCzye2yZCCV9dHA9XFDCLojcgW7lKiEBzg2HcxZITxCHRFMLZV7Pm/hP1fZFHIKOU8jxTvPjt5IAiJ85HUgc6zHofrJb+fcYIwF/Sd2B/p5vnGtu2GEi2acurGlFhv8s/uc0tFW8la1GwJniXTrHL+2KteWH0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756919994; c=relaxed/simple;
	bh=i+S7cVJuGM7xmCeD9HzjkWhNUeHEzsIlnuON3a/mfok=;
	h=To:Subject:From:Message-Id:Date; b=AwTDNDsPwaHKIZgcXrxsLQnJsZZImqHG0GqiJrchHfzlzS5PrVn554gnzzmgE9A6z4chEcMN+xbjdWhNCZKvJneMPinragisUo9LdHVFo4IN4HuLLAOo4+/aHuz0jAd8XCLzgbFrcoYndK0KlRy51DMFi3a2ELNioIMTcF81kvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scfajIX8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scfajIX8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E738C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756919993;
	bh=i+S7cVJuGM7xmCeD9HzjkWhNUeHEzsIlnuON3a/mfok=;
	h=To:Subject:From:Date:From;
	b=scfajIX88AqpWxXrvwKnDqUtrNn3Rn56w5zSFXjwI6xySOzEXeMVy0uPoDsFwxoXa
	 F1dR6ql6oZKuosOnAVQnLWwmMZXypAMrH/FgIawfnGk1dmnrtCRJrVzC5Vwmdnk8KA
	 8jN1xXWll+mnR2VgKVUgPIm2VTPWXIRYDQqGPOLiWizmqO5mx3ECaeIkCQameNGgsD
	 UoV2GG/DVj8Wvbb3jBmqZYWSGzcH7RxyvSX2rDCX7ey+aHo13GUS0BbWVYFCwDoVJs
	 bi2ya+rN9T6wln+nJhbfAInXCQRkbP8GVYHDLkEjvAbWVVQFvI/c3OVt5vRsWzXoCA
	 5bJVqrIwbfaMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9644ECA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175691999358.14130.8618130011177332940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34dbf4e1dd42efe695d35c9c42f6201c0383e2d7cee0991dbc0827b2ea50ed0
Date: Wed, 03 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756919993
