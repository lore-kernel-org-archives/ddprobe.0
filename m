Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9C17D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 10:10:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644833408;
	h=To:Subject:From:Message-Id:Date;
	bh=CBGaNJ8sT49QVMuYpwIVZxjuObE7T3WfEqAZ7NIjV1Q=;
	b=kV8D3qtPSkR3xouAB0fywtr14n/l4TeOQzSDCMf8bDtwxvJQCSa/WF1wL/dFKxSA
	MQWahh5P5HR5A4lLvfJ7EBPfUTOJNyGBpM78FkDXxILjCYCza2ulQPYuvsU/MQhJ0Ez
	hTEJuxy7ISp3L8QYTsk0dOupeSxYq5iSeD/NlvbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644833408;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CBGaNJ8sT49QVMuYpwIVZxjuObE7T3WfEqAZ7NIjV1Q=;
	b=Pz0g32tBx/X7K9BGluPryZiGula201cr3er76xB8Ia+uJ4qhSHxBunB9LgLOpFAv
	cIqtgz+BdwDRfhjRNk+l58TXnzwgC5eCK7v0mBaPspM+4AIGpgWnJtOV5u42K7QpCIl
	+aJ9xQKOm2DZute7YLZqxp+vTwYYSvem5Izb+k8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7b6030a-bf7dc6d3-ac77-4873-9514-95dccbdaaae0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d02b8f923eb0d7b0cc4aa0ec69faebaf15b665ae3f2268db7595a757f44c6ca7
Date: Mon, 14 Feb 2022 10:10:07 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644833407
