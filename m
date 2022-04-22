Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F5023B4
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 03:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650597778;
	h=To:Subject:From:Message-Id:Date;
	bh=Wrgfa3jwSWl+ip8za867hDteTuK5MqfhEdBetI2ZQ9o=;
	b=Htxn56IePft4qwskdNu/5Py8xwBMqaxOzImb8WFn645AkhdsOHbB1MVV8PCMon38
	2JyDPfluNzMleKG9LlOKCj8GJByrbXZ9GGJdXFX881PndFuF4AyQnVOSRXQ8MBc32Py
	4YkQW7Pc2dJdaggGq8KbglEGh+BajJuvxQWvhxIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650597778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wrgfa3jwSWl+ip8za867hDteTuK5MqfhEdBetI2ZQ9o=;
	b=JWAHcukUu5zh9jEFipVYcAAGj/B/Sbr29yIlUDROJOpJw/8TIleorL7JRzkoAiX7
	S5QJv95NljJ7VDVFJf+TIFdtSdmnKV5SnyFBxqh6hLRFei4nX/BDiuaQh25QaQb6z7n
	KC/o6ziR22LKfnQwpdO6yfrk95tR4CayAhW/nW0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804f4b5361-2716b5e6-89d9-4645-8767-c3efc7ed92c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1cf8de07b7a2c93cd79b6c59b28ecb34653f7f80efb305d9f957534c622ebf6
Date: Fri, 22 Apr 2022 03:22:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650597778
