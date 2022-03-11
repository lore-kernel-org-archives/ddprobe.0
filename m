Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9671F7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646979984;
	h=To:Subject:From:Message-Id:Date;
	bh=KbNfaWOmd0L11bS27Jrhxln6RsQYEQxNWybVUUJASVc=;
	b=jDTqZLDLBNXbxLHOhlahVsM2oI4uXW525+PmssEY5Iz5K8kqJX3G0UWlyBVkytY5
	ZlsKtgIOMc0sx2ROoHcfE04lC9xDEuF34qG7hJrRtes8g4voik+gXI7boGe0KrTyHXs
	75SHk9QuXivr2P4MyJ11PvpoHAubI1RfGnbu0ysM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646979984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KbNfaWOmd0L11bS27Jrhxln6RsQYEQxNWybVUUJASVc=;
	b=JWP2UEiwjP+xvhkTbr+deRYiMszeeKOa46K5z2Rc5w8EYy/ZnNsxpu9adyH8/wVY
	sJblfzf8jJW1kf1AsndjQGZ/xzRfD6mxtYUv4Wy/sStaB4wuRIVBGlcEje0lx+BOeTT
	oPYldvBm1rwtVWOAnLcf3X6LCdyv6u3fSupIyBbo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77a82d3c-8b472d3e-5c38-4ede-af77-7aa4b896dc5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c082a08c679ab854cbf407f6bf3ce7291161b9fa5c538867074035d5c1428b56
Date: Fri, 11 Mar 2022 06:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646979984
