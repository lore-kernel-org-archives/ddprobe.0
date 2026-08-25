Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6C334D384
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787674834; cv=none; b=TAQpCvPBhagQUMONfIbF18YBmdYq/8H907iFLlJjmVXaNYx/3YXMtdLb5sHDmjO9C8HjnooLA0CXeNZQ8+Xo+m6p+p4aIbp9gZCQ7Y1/BaEvuuT+Q7gs9a/ZRZ7P2lG1XRpaGWX8TBzsIrY6FYb6OesvQog55MqvN4I2FQyjumU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787674834; c=relaxed/simple;
	bh=79yFXCWLAqY9MWq0O4icctW9vadpBM7B6Klr27h4/eM=;
	h=To:Subject:From:Message-Id:Date; b=XsfoJ8J4aU8zEIcnhNY/FRkqxgAt23GvfX1bHLaQbAzSYwSbIGrHBfXbryDpZwUo0NfuR74po1clBE5ltWHbIlQpaiJ9PMrsI+yfnyBNpGrM5p+UV9eZBhbTaaaz0koSV3OLFGYNlvAzBxkL8H+pin7yPhM4geFMd8zTPPf857U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shJshGGY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shJshGGY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2BA3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787674833;
	bh=79yFXCWLAqY9MWq0O4icctW9vadpBM7B6Klr27h4/eM=;
	h=To:Subject:From:Date:From;
	b=shJshGGYKh81I+K/NmAxwLEyMFCvi1+IhyUJMVRf2VmjMarMAhKbWcvd9BJH7yip6
	 308UrFfjuQhWmeh8Okir+UWTEZJX3lH3VnxwDj4WqfOA4BdjHfq0qjt7FDVHcnQxED
	 sBr/4k/MwiTqLjzAmYV1YUcYi5Qlrcb9irCJeFRtWiip+3tL/G0KgQ9J4DOsssO7LU
	 U9CFG5ulCJTJGRkOD8DrprWu529ufZ1msZZH3UJBoYPPYFNGY+3R5J5ehHkUuTtKXI
	 qgL/7SF1t7bwycttIS7R7FsXhn4ZQfpT3i1TT44qAchoNqfiS2NTHcczUtz0/tqIZ1
	 gCSHIEmXMrr0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC5DC61DBC
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767483370.4157.3899945670550598699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f57bab76c898bee785cbd80d5bf362ed3b8429f7826d4bbf0c688ad6baff42
Date: Tue, 25 Aug 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787674833
