Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240E3849C
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764428574; cv=none; b=d24FqIoBs6Nud+1UjAA/fL2DMEBOjnUl3u18rX9rxSbP8HjytbAvuc+Rr4urQbU7G7rtgInptpmot8GuXH0xQlWjcc8AKZxoFW7vtqO8YvBBww57NWVKkS25yKWRf99E4VfIuOtR5PKviH6X7h+E6v7nMQMqUIce51YAxTulS8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764428574; c=relaxed/simple;
	bh=HRW6QS6FLMWaV5QdF8cmukiOPWOaQw3GwoD8QRw6QPc=;
	h=To:Subject:From:Message-Id:Date; b=tGdeKUD4i8O6zX7nfmX8dVjwiZepQHiLBqiSOzU6E65MdSGtoUF59CXf0jJAK8+MNdQEPxKce4Iy7vQROznXfV+U1X0FC4VR3jxUo0FPkpJ9vgdWEHW5WckDxdI6uY+kupxD++VGCekYV98YR1ExRncdu2IpBBPhdO3rDjYc/9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAhpTNaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAhpTNaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F81C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764428573;
	bh=HRW6QS6FLMWaV5QdF8cmukiOPWOaQw3GwoD8QRw6QPc=;
	h=To:Subject:From:Date:From;
	b=YAhpTNaKUEcL1t7TiT/iEL/bRI7IxHoub9pf9qul0Rm7IDhXKgkLfu+7Dm8j4u5Ba
	 9GN7yjoI3cCrvhHm9dweQ9ETdkhgtKCLgfDgDD2zM2si4Gey2tusr6/C3Gl70p8qzZ
	 8w5QhepoC/x+n3yX2jX/6vCH+L67BjLwd3l1qYEgb9JCVqLe9JNCJzDUmOhS1vrKR7
	 mCJ3yXm9UoLXureXxmXloAivMqLKwNud8v4m8j6w9xkVeJSKTbntKYEugIJbZkZRzY
	 BylWbntN3k+QEXRGTHCxZsESSKoKxQmH/9KV3MlLGY3cmYp3V0Fp/VXUpCV+7Fbhxi
	 G6eMVzEBvfcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EDACFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 15:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442857358.21718.6710098070756845141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 166a6424eea26cd9120c628872a74b7b5b4f0a59243288a650140dd232540d9a
Date: Sat, 29 Nov 2025 15:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764428573
