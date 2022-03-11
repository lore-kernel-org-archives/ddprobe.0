Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4D27E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 01:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646960784;
	h=To:Subject:From:Message-Id:Date;
	bh=Z3WdkOfVlF+o8T6k+qY2oZOaR6yfez2PMaa1IahBH5o=;
	b=Gl6GJoNOGlAk2VqBDYEPF1I28AEHDBCx66P47Ua+wrFj8JIPc/4cDx8PUg4xMReb
	W0Qyfv0FMk3/mlViOSLRS0+bzBVvU+6OVLfXTAUaRD3gw5teXakvMn3oami4xfTbZ2Y
	YE02k253jugvilE6Q0YI2+EBvrmEYfWt/wh23fLU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646960784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z3WdkOfVlF+o8T6k+qY2oZOaR6yfez2PMaa1IahBH5o=;
	b=S5r+JAyv2KOdZaXot5j7tdB1FSyP6uiJkyolTRGBrrndf2FthcVOQ3ZatzDm3Pi5
	dOIM+L5So0Dw47JVhfUwADII7QZ9zmn6L054ipRaabx1jzhzBCtOxz5dSt5oHTGL2R+
	Q0jfDdwjYlzr6M413vUvRgaAnVnfO1ZPuQFYIsZw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76833588-9c01ff2f-59b3-4c91-8594-cc913ee33942-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8d214e84a9440a9a9d76434994d1d5cb8569ec7a793bf1e07290f1b72077744
Date: Fri, 11 Mar 2022 01:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646960784
