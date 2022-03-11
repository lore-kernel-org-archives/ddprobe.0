Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0F52C9D
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647003084;
	h=To:Subject:From:Message-Id:Date;
	bh=T9/uWQBCWIa/GQIqyDEVSVVxp94xCTNUNaTEHGh5Ti4=;
	b=dJavZCFkToX0oLrC+NYd2SdF/FcWYrrubHhLPOoK4H/+oMjfKbnfs9ttjMCwpQvb
	kYK6po0GURNKG8q8s+TKuzCGsGJ8oHAVYQOnRfZR7J6i1JJKTChbLo8GPMe+Z3IMxkL
	9JVxZbkBp38h9WcYMLDZIDaBdlVZ/LtN1SmXuc38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647003084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=T9/uWQBCWIa/GQIqyDEVSVVxp94xCTNUNaTEHGh5Ti4=;
	b=H78PhrdTiIhyCXdNsrrk82zEgVSt8pfbD+IdCwmGBDI4/1LgowtROp+1k3ibNxx3
	j2RIE5eTsPnnt3WSDvugV9qkMaWVfS6TYFCvv8/avCRidCNtmXVZzk/khajeZo8jqWf
	E9O9Bt95BL4C6UAO/NdQwUcvZeHm9wyED0u2Tolo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7908a80c-88d662b9-b353-4d10-b395-63a40ec0255a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7a2d1d8db4e33c35811353c4fccd88aa90006d8370e5a041f0f683570f0aed5e
Date: Fri, 11 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647003084
