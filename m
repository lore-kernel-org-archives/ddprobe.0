Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CBBF14B959
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754107194; cv=none; b=JznbVZEHOgndBZsJfU8fZcGYo6bKPp8kyhAvvU9hH/+HGAGuHep7PUdVUSHaTyDB1JvIqRq+Nu7Z/r0TjLZPLTLdS9hssNm+bJUBo+lSI5XI8yGb6D9I+zis7Liu4uBy/ISVJZJLbGmUeiO9PWLTHSJMAFOIuhy8ld6M8tQ/yL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754107194; c=relaxed/simple;
	bh=EBRoszatKuZj2LdYxOcRFkuaEcCm/VB0LjlvyKolRb8=;
	h=To:Subject:From:Message-Id:Date; b=pTkYHNPrv2NVhm0tSeg+feJSlUQCBwJOWb0zFvlqqxy1Mtubd3QhqmPNBN2F3KA2ct9QnMqOAWt/z3SFH7X8LLxvi9fngpULBul7W2+NAB7MS/Mban8D5sTC8KP/4fXG0Jskt7i9Bs0rclVJsJ4sJJzKLoDs/l/+jTjb9Ub4YW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc7OWfAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc7OWfAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15EAC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754107193;
	bh=EBRoszatKuZj2LdYxOcRFkuaEcCm/VB0LjlvyKolRb8=;
	h=To:Subject:From:Date:From;
	b=gc7OWfAizs2HG2TY21s5skIxLTQNHFzWM1ZBxXdddThoPRTmbFRRvPJF+8ZnXXyTN
	 AGgpb+WOHBCsJ81L6x2Qy8A0JL6QD0g6YYhih9+ArVGc/fqCdx+1AMN2gRx+XLmYKd
	 Aq2KTQlqAmxpWHekSgNP2K7RCyvtZltDVN/gzeYpgOtvkdSkxuk/tQznat7cSe/4Sh
	 brlPOD2L4BGRdtl4jqRH1xSbdVcUm8W41qJStwf7OF/SmPLrYGq9gmym/ZOmrP2LUu
	 BrmCV8RYNto3iHJVRQnljx3kRvj1+013r4D48IAkW2zlugPfdCpS2D7igDme40fZ0w
	 OLXu+fV2NouoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908D7C87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175410719358.23335.9810568891802409835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f78fd42eb66ef81abbef263167ade51f7dbe3a1c446ada455a320e7856e7e5
Date: Sat, 02 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754107193
