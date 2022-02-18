Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC702F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645147585;
	h=To:Subject:From:Message-Id:Date;
	bh=KIoGfwZb0Z5BmnwzdoAypW3C4bOGMumVR3MdPkY5hWA=;
	b=dAh+B+gxLseHODcj1W3OehG93t9jzHWUvMmD9cI53xLBRx59cy9SiUon3Usk4MkJ
	AxyMuc4MhpPVyHpCjNFXK/CIohpYzHcKyuxcFmxj522wHbomxrWXkzOAnG7CzsqNUfS
	iSLMdHjoPbmXLuKa9N+Ur9z9GI00PcE8u+Q3eoV4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645147585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KIoGfwZb0Z5BmnwzdoAypW3C4bOGMumVR3MdPkY5hWA=;
	b=ZHKfX0wICVnslC7ur0c3v1BMSlkn3wLuMI+y1teXb+6CkDoVLHwcyTn1Ol42kjIT
	NfEC9GRrQ2N33G8C1ry6zKLehR81abnIc94P4BS8m6vWiw0Jsqr+FRpQQ+6MXENq4bX
	d8xOzIMiTawPXITYUTXjmIZ28JTLSDAJBRo3H2Fs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0a6ff92c-e131dc4a-198f-496c-a6f2-5fe048af531f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 92b944cd03d82d8591739540ac42bd5484482e1e90e26ddcf6e2480f5c3d7c6e
Date: Fri, 18 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645147584
