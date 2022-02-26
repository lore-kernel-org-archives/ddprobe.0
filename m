Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72B277A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 01:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645838484;
	h=To:Subject:From:Message-Id:Date;
	bh=I4AO0Eyw7fCEf9MC0mXRz0MfCjtFYcIjlVF2RX90oks=;
	b=Or5JhBg4DPx07OO0eSm+pasOX6n9/X2LGi5DfWOh+bph/e70El33Vx+p/kTC8Q7b
	kPoRL/MQtOLc9dIUtckTpnGRQmCHcbH+sBXwvLGlQoJeCz0vkFkjH2PH2Ofg8cSObdI
	5tf5bNa57i/D6tjgFr0RrfMQDkk/pN600Bi8wwWo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645838484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I4AO0Eyw7fCEf9MC0mXRz0MfCjtFYcIjlVF2RX90oks=;
	b=iJNAnRkhkLiSZkIvXR1C0oroF1b+Ouzy3SHBbHD+tnVyBxStOx2QEpfEqGvdf45z
	oYMur/6tyGNc+a3RJHStqsvb7RdPOdXtKISUWbzE7lpRjIivURsWFnzEL3fmIPa/Vgw
	bU65HTjDvI/33oL2ARLhwJtlC7vQGfY17C2y2oBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f339e4510-6e5c011c-b3a4-4ad0-b725-50f8dc6b0dc2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5196373f24c1692883b6adfa8715066d9a2a366e4bb317723a0e30eab027ddf
Date: Sat, 26 Feb 2022 01:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645838484
