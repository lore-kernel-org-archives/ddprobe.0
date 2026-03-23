Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA6A3362147
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774262094; cv=none; b=i4bkijYYBqslNPwIUmCW/053nVVXTWc9ucHPSOxmE9dFdRnrklgNvhf6XpdcghG15HHSGdUFidl5s6+TFH8IHCNDP0fizoA/TS5nk6OyBaVpLKcmf+Gx7metIRCJkn8ev8F2U5Kjog+7fQ1rM1dBpPgjP6rwpKmqvqUg5surxI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774262094; c=relaxed/simple;
	bh=plxR0FgtN5G3Vv1UKwOBkfSVLCVfa1RyOM8Asca3i58=;
	h=To:Subject:From:Message-Id:Date; b=Sb5Y1XtLEaQV8jnpMwusPinGZzj3pXchWLMLZIJnCzDEgb5WNZy/jIgwl0r/DVK5DLJVuBsxGou4+Z4lNXbu7vDGPW2WlVcY/0au6wMb8nScVk2+nWRf0aHeS6mEB6uyCHfDc5rxiCTnr4F0CGMJIc18tX9NDO5gJ1ktjDJIMfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbV1/7fY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbV1/7fY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2645C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774262093;
	bh=plxR0FgtN5G3Vv1UKwOBkfSVLCVfa1RyOM8Asca3i58=;
	h=To:Subject:From:Date:From;
	b=kbV1/7fYDzVY3ZJCRFHZnkBm/K8oLAJGzHkMX8uaJ8+VoT/DoC81ijMRzBan6G0Cp
	 hNlDxPWf3oardAXcXsQm7VHQm+Xcumv/wZhXt+8Ci5KgvbcY6JOZyjY/4Cn2x5JdMs
	 wHMn7CAZAUfum8VSdBBniyvYA0xyMeQQKkLXtZwJPMNTmtEeoibScX8lHZzELqxPTa
	 r4lg+HmZHA208efNzbDmFXOyr1wPyPgZw/BPpKGO4wMZu3Lwh/FikqnzaIwu86HS+i
	 6wIA4HwjpvcZqKrHZ7c8WxIp4acrTA1/IJ7oAgms5TnkAG/Qcf1B/DvBEKymUBSgX0
	 tQCRyqq9Wmb8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CCFEC01C5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426209359.16402.17827206989779481130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 366c972eb20541608ba67162b6634dfa1c583f18532b7837427a84a63cbc1792
Date: Mon, 23 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774262093
