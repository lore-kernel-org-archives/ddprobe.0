Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3401E80639
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721382954; cv=none; b=XwC32SQP/WcCDCQpBRjMqWhI62I9FGaaYPDWTpfiaNnVK8uYVz2bqOAFqc1Wj+3efgJsXO3lDfgetXBS5m30WXW9J7U5aYEUSEq+JZEqJxL/auOuIPRESdWYeQlwK4VNN8Dfi7F++ZP4kWvY/M+FwrmqzdKuOx3WEE09QfYKf1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721382954; c=relaxed/simple;
	bh=121zMP3BNpNhAEe9a+ORu+CCEUOAQVz+0wl1D09kZZo=;
	h=To:Subject:From:Message-Id:Date; b=XtEOuzRwDqQFwSZoV7Q8FkVjWu5Gm6lbBMy4ZwtG4xKxtPe8cpvlHdtuE4ivek8rttZGIWiWLUfGrEzo+h9MWW9HdeeKAnG3LZFq/SiNYAAx3JdjJSnSIlfJTnIyhIYbivi3UkcET4qcqK6c+IG2KLAQixTFE7MQC+fR6JeAQzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1vDYOSL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1vDYOSL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E16C4AF0A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721382953;
	bh=121zMP3BNpNhAEe9a+ORu+CCEUOAQVz+0wl1D09kZZo=;
	h=To:Subject:From:Date:From;
	b=n1vDYOSLAs6hN9RFFz7vjET8KuLX0e2y5OExNmQkd+FFgn1aJwggAO4IxMb5TdLlC
	 Iakwo6N42GYrToVnNi1qyaQGV//kAeezSwFOUWWlzUo3yCUdmSSr5Qi+U1EyEBNG+w
	 oahcphpSYEuETAzGL9YlIxwFbvAQ53QpZdj2I6kS2mBkj4G41lsq3KYIdOTdazgX5d
	 rUp8SEEB8cojizfHU2XiBXcI+LV79ivvWJ620OQ8hmWqQHjfOVPeDLZdtGSlyf3xln
	 hi81zhrRC88yXDxL+5DKVAh3LA8Otr3Rn3pYGXNcFAY9jdvSPADfFUpXhXf47yLfz0
	 7LnnxrSXKvdpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959EDC3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172138295360.10739.9110198758171408473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2766382bfe35e2e2eff0516ac882ff10ad181509b3beb67107fd38c6f3c7cfc
Date: Fri, 19 Jul 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721382953
