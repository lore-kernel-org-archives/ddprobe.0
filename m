Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291AE156665
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732257954; cv=none; b=QT4xIZF0/+oOWJSF2eoORii/2FNKj/E7w3kyHlGwp+A766618zWy43E5V32AlFE8OzjsXAl8mA40EE/M1SII/Qv7NbjRH6VC1GL4B/xiPV8GzGbfMQ+m7gUIsVGpJA+jIJRHLKEohK7UMyKgwhx7nJYUR4BZxL23S1rq9SbURbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732257954; c=relaxed/simple;
	bh=Q1dCThm2YIkk2jaAPG4gbbGYEqEoYImL/qIJMVArN1Q=;
	h=To:Subject:From:Message-Id:Date; b=YbH1GKBm+RGGyn7a/uHpPGH4lD5BGbcjStJj/hboE+iJzH0WKYtZPjw6u3ekONzUBaGZo4xXbm6ycn7j7nn8T5CU3xhPZlq4T4ICUO2u/6RR6hXp7BGPhIQWVs1E6b5oQL3Qm5khP+C+penMFHQGFbdbFCIETHw+yHgqc+KCPzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h0OGIG69; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h0OGIG69"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBFBC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732257953;
	bh=Q1dCThm2YIkk2jaAPG4gbbGYEqEoYImL/qIJMVArN1Q=;
	h=To:Subject:From:Date:From;
	b=h0OGIG69XF+bO5jpmYuU6KRUIV84KOeBT0Ifj7grx7pBwgv5iGiPjKjGg3+TtapPj
	 n0a1IyNQMjSNDs47/KkEc4JmiFCnpv7cClAAVL3JvPXwTkXrH5r8z19lR+JqPnvK0Z
	 l18McGQslO8U6mzIzVYxVgc5DieAyAguaURCTQlqBsTw7IXCkhGrywOUFvtocn8Fpp
	 Fmdi83/6N6brrGcZFTMwm2XBpfRYKasY2HQbR1l4xQKVsPuleByIucB3D9cfxFXxq/
	 t5zUegBQ3+r5WvuN5yQk50MQVzcgtdzmEVklmcJMtZwwwUIB9PUeJe69CvhCkfdUeT
	 UrX7bu1asS38w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1B1E65D29
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173225795363.5167.15403571846999676337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a800959031dc29b933d585842211592944585860e3c143cc64762b7b0751cb5
Date: Fri, 22 Nov 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732257953
