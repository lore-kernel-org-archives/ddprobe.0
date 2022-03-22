Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E517E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647954384;
	h=To:Subject:From:Message-Id:Date;
	bh=7d/BPX1UNBZe8fj6B+x/FL0S+R2ck7XdpYzPnCeM9+0=;
	b=X2LxTEC3Rv16hK0D6sRijI18W7vvHoaS5NhZmBK+eskTqGwZqYPeLKj/o2taSt3F
	NYzyIXJSCVR0WfOAxrbkhfxdWL2yhDRmF7gOHE3xh5EHCvd9HBBE8CDTwoTiyOLC2M9
	w+Bo4isFdMgBPBhln6vTnC3wMLh72pc91OQ5oU2s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647954384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7d/BPX1UNBZe8fj6B+x/FL0S+R2ck7XdpYzPnCeM9+0=;
	b=Wy8/ZtD+tkg2DjHz/MsYc7a+PZBRvNXCgxc6OBnoHw8nNVILP/kfXLARsR3TBZfK
	5KgL5hsiCIu2IyQRa5GyFauY14Hyrh6n7EMRUgE5aVZpZSzs7gkxb49xya5u1YwyUwx
	xcmoV2RAKCBcIA+fCOlzF+wnEVNwwuvZGahO0NvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1bc5783-fdfa3ea1-02ed-46d2-bbcc-d0eba7cd93b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39490bee494043b37ad22f0c60a4ad898e41dc45f76f289b8f3648996bd19f49
Date: Tue, 22 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647954384
