Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289F66450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 03:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646795785;
	h=To:Subject:From:Message-Id:Date;
	bh=YtKij4FWDqmChTwbSyl2fyaVWSTI4hpHQR5pkF23K70=;
	b=BK1GOTGnmY8cpv3GqVxsvCGuslpSIsAXsxGSGkVrle818m8UPo3fBBX4R2DX/MQ8
	kDyouZTIyQOwmKUDoH9c26egOrE0LpN9NRfi4ILSV+quUxaWteuc2/qdszJsW6l7P7e
	/jjB2rcd6LzfYAR6l6/rUoOFTQCOYULcd6TNe55s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646795785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YtKij4FWDqmChTwbSyl2fyaVWSTI4hpHQR5pkF23K70=;
	b=OeF4yeYGZUot9T8z9h5ng0xqPgSCyDR2WePT+YzN7vJCCgOdvb9vazIHLe98qJa7
	/di7CwfCBhCqgNsF5Bdch28oIQAhTHcyK8tMH7aQtrpCmIfLAGqwpwfd0AFIK+rH1kt
	+vnS7dDbGTApO0EcwabQzbD8mOQ2oXzs19JxHLJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cad8250-28dc924d-40d1-4f71-9739-78893e7feb98-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a1b5c14928c8063bb2405baffeacdff7e5b23e7cd15b895400d931a8c23e5f5
Date: Wed, 9 Mar 2022 03:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646795784
