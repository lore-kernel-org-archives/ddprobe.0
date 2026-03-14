Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3A02EC0A2
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773516894; cv=none; b=Bcib/WDvcmXOaMFvoAIVB9YJ55mauANJxbXQhqVkI/w2tWJkM3bPAiJSCxeNIs3KYvBEfwKt9P3Aysdb/OWkPbObDbaa3HAOZbJZ2HkTXVM+vKT1/daXhU5ogw+Kbi5IV773H6V6dJQ+BRm3EXVeua8GYb+tCPI9iSJivjhW658=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773516894; c=relaxed/simple;
	bh=sHIAInyxXBQM+/hsARnYmY0iaS7koj4ovBrQ5gqQMX8=;
	h=To:Subject:From:Message-Id:Date; b=UHRVDSNGV+51fkELrpFKEi3X5IT45Z4F0XRFSbzNxv8h1YVu18jmfYYQqqzmo3XQ9HJY04+vGP6S3ivfFpD7K/7uMLw16dipn8cZuPM47dHOOkLfFN93uHyEoPjvaJzWKAWZmdZA276X+77Lp9U5YfzFZ7194YNh4kOEtwNDfLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hta7dzMW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hta7dzMW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87D1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773516893;
	bh=sHIAInyxXBQM+/hsARnYmY0iaS7koj4ovBrQ5gqQMX8=;
	h=To:Subject:From:Date:From;
	b=Hta7dzMWF915/csQrKbCRCcDdniIuXij4LOrse4kSVxNkWMeIuEY49k1swvPJtAYh
	 cVlVyZ/lZeSS2F547xjxFKy4QIU2X6+cRKzQ/hxipvfzyIkBWr7/8LmSGGyLLOFN47
	 +zsmXVojM4Qch4ZQ4YJQnoE+A6Ej74oYzgqp0llHH+SV4A9isyxWQMksluaW8zLubw
	 s4aleTB9VrDCdAHw4xWS5BNdLPLYXQ8o8fzUYL537Sk3aGmiiPsnyZz1NmPS1FVDXR
	 gpk2ASe69REjm4xcqjUhOXstnmLMKb5eEXBwhHY/KmwFRibuQHHHfmN0IbQvhoZMJo
	 zRtDlANrFwG5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D7B105F79E
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351689358.8976.7981324631680405385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63234d258aea56ac7c766fce6d56eca601f77fdc3601e4db63abef3cee47e56d
Date: Sat, 14 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773516893
