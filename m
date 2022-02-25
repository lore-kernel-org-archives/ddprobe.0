Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9624828E7
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645812384;
	h=To:Subject:From:Message-Id:Date;
	bh=xwbAhGCsdIFTZG997Qjbn2x/VYT8Ux0iOSJMNUc0r5E=;
	b=BVEV32n5k/BzdDyVSz+AGVWuJibvzxDLCi+yGBV+25QhYMqiU2pV28/bsArSs/Gl
	yGrvRoXyW4IjN/sHJNQ/TyvRaU40RqezoJ0RCD/QGwIKIheM1sXvL3+G0vrUYpma8pu
	uC2wtadGypEDA6DEbBMXYcKnzat9vTDwPTnMWdWA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645812384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xwbAhGCsdIFTZG997Qjbn2x/VYT8Ux0iOSJMNUc0r5E=;
	b=bIBiVjfm7kBP6JiBNDKIUOmlg/KHxSLQImVYGTw9+id2UR0/+LhhXFABGCy49CEV
	XcMFX+bUG81XRQ/bVGAOD9wYPjrenDc1AsK2u+gNMDOkiUOzXPmobirdsb1I1xujWd9
	3C5elUQ2G70TZvtcjwJF896c3pcSfERmp5b4zCKk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32100434-ecb606ad-4c26-40d8-8cb4-e864abb12deb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 288be5713dc90ba197ebf65a1d875afc8a22766ea2961a6bbd52e318ab8b3988
Date: Fri, 25 Feb 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645812384
