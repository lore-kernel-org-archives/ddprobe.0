Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CEB7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 04:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648959058;
	h=To:Subject:From:Message-Id:Date;
	bh=HVMeKfT4e2Y5O3opcv3uiS8FBNcyI40Ku2AVUKZ8z/w=;
	b=JfdK+5S2HZZK8U7clkY2RZI5roUKFnNAKhqmCAXARSWE16Z/FEUJsOa9Cv13/iCt
	jJZ1aPN9hsD0xykmyLUWWmR0IOH8Mg3+on0kUfsRUZx2oL1G575r6WTTVYcGwkT4G/n
	y/hBNV3DbFkcbTaaKHWV7+i+xXsr+ShJBFXVb9dE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648959058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HVMeKfT4e2Y5O3opcv3uiS8FBNcyI40Ku2AVUKZ8z/w=;
	b=k2C2LuA8MZEpsov62TtdGOTKcRsQ0Ts5GaieqkriJ8k0U0zVxYiK+lepDHy7mD7K
	wxLDZnoajO6RnQwpXgvVfYmteBxAH1KnTkMfI9J3QObqGDoC+Te6mp+J54Mgvjdg3o2
	xanJsXfgfs85JzZG90BGQ35ZOC6tcdnXv5urpjN4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed9e71ad-3b00323b-af98-48d2-85f0-0d3fce9813f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f23b147abf09cb2866b3f0061b0c27eaa107cbfdc99a79c67baf452543fcf298
Date: Sun, 3 Apr 2022 04:10:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648959058
