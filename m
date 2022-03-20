Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C574720E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 03:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647748585;
	h=To:Subject:From:Message-Id:Date;
	bh=lZpsANt8N9IzO+v5I59zLqUMA3bY56zbKbgfUBa0F4A=;
	b=Z0f5fdhBR5wn6826IVLS8Le4l0DxP3ne2WvbcZL4kfVTHul8Zs2qBcwDWTqO8Lb0
	u5q74YlNZzxwlb6MSwAzKaY0muLeTO8zg+TilZrVWhxRmQcleIvaY041f4/bbyPdxAv
	tGE7zvFxkktx2x3/X/zLjHnzhwscL3hZ19xcfV8s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647748585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lZpsANt8N9IzO+v5I59zLqUMA3bY56zbKbgfUBa0F4A=;
	b=N2PczQTsMYnSiiYLupdcHUu+icbAlT0uldJZtaWOotfrru6dL+1S2pv7rofZcEYl
	XGyViNzbOs5ji5KQ6Og/Y2ofdhN7YGdQxtdr4aZfDj9nsEx4YYEYsgFY4CdBFHbUyLl
	8hODoO1S63ev/6nBKYd/MlCysPN6UEAtYez+jlKA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa578151b-f5bd0223-6c81-4a63-b18b-b0817fe488a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c0cdc18029e0407eeeb9981310cafe67c8f81403a809d6256786996f274bd31
Date: Sun, 20 Mar 2022 03:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647748584
