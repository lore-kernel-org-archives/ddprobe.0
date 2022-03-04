Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3D6365
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 00:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646352385;
	h=To:Subject:From:Message-Id:Date;
	bh=c05hWWSCHUL6c0LCoDDnUvfJrVNwT5goFQZSds8Gu/I=;
	b=O9yPXQhbuJP5eb7Y6Zzk5U4p5WuFFmr54eEpERlNb42EcoyRZmbxv6u20dF0WOi5
	jFKjtzG6DYRGVbH1Ut6O8pHpySZwVwdpoaSKTDlcqi7kympXJjCD1EdyeOIHVZMzD7d
	NQnAUosSkQ+QfdMcQYnOfOXvmQOisnek5cIYU+3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646352385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c05hWWSCHUL6c0LCoDDnUvfJrVNwT5goFQZSds8Gu/I=;
	b=DwhVKbVS2RxIzjNmB7l/i539+c+sDXJiE3QzjdfZWnpJzhnYQSlKbbansXKHAnJn
	Evom2eL6XDiXH78jmbk/08gA/czkh//TC0ha/Lep+rpBaaXUML4McaqZep1gQrOnWM2
	VkPnfTmIe7mFKc8YAY2f8fcGWxQqXalSD8udZ83k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f523fc300-cd4757b7-5e45-4658-adcf-cb889b7c2666-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5efdf655f4bd83c8eb3d3de0f7baca76c95d6c9f5fb9a0ab8b923625be92ba00
Date: Fri, 4 Mar 2022 00:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646352384
