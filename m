Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852B528E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 16:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645202185;
	h=To:Subject:From:Message-Id:Date;
	bh=vhIR0WJdYvwc08UprEohH3N6cG3N9lHk33+RZm+uRBU=;
	b=UAs+2dxpWp/MOjHhZKN09nKOwD7agLcP0qqIyz6q4AEpsy1g8WchrjI5G18uFo2F
	BsSJuY+sPHFxwaS5gs6B1Ej3rw1QlJjoszStYjkP221/lH/LGdcRCCZQqIzMT+Wp4fF
	TOKDy7wqXgAPVL6sVr4Djdsoq3yMmMBQEPOtIBus=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645202185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vhIR0WJdYvwc08UprEohH3N6cG3N9lHk33+RZm+uRBU=;
	b=A4Uko2Qm67un7FOr9Y4NcEhlCddoWXeRwx+LHEg3Q13h3ge669Ff6vMjVvimSkTu
	ZmvWRkkAIUc9u+pJ1uTTBAxsfdZDjPSVuBqRwsoXl8PizA2A53q4KsJo03o/XGGp2aI
	WuxcSkBcHDCK9JRXcA8jNakRlkf03aqm6cOFPVi4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0db11a85-9d7a9425-c9ab-45c1-b6b7-981c7dd2fa37-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe7672bb5831c0b9bae6e74f641c1079d26957e73d5287f4a605c2b8a064929
Date: Fri, 18 Feb 2022 16:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645202184
