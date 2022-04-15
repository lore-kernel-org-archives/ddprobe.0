Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C15320E
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 11:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650023098;
	h=To:Subject:From:Message-Id:Date;
	bh=0bP+iuiO72HUTtoGraXZfoviWvNiLnFyUj6vJ96/hHk=;
	b=ZgCDfvhHIAwCsBB//s1MGY0DrJFUs5VP6WK3NOQEpYqYpp/vXwJQg6uH99ff0Pd4
	oiWxvwhsr8oEoSI6EbhNS2UjDmaNiqHnRNeSqJf+zrhymjANNTgIvQjfyl7x+yE6yKy
	teJiGNF8yo8wk3WqdOa6aTRdkD2Ju7Tf/T9XiFv4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650023098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0bP+iuiO72HUTtoGraXZfoviWvNiLnFyUj6vJ96/hHk=;
	b=ido9wbHBsbwZ7feq9BP1YJFGD1ZfJGpwlsi7pFNXTzEFIrwTeG+piEadA8+lwp5Y
	p+I3YUfgfbDfnHmOis5/XxX7ytzKm1qS6zXNyD/olxmoe5FcCcxJ2jzHnP45xy69IU1
	mAmL6QN9oxYcrgVZ499Gucfx6LVYD+JqDViizyeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802d0a67e1-95210fa1-e596-49fa-888f-62dda4b28df0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d6df83605f32ec511e7107f560bdcc53709a9eb833daa5e0decd71a3596e0df
Date: Fri, 15 Apr 2022 11:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650023098
