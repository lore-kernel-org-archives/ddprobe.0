Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B93D2912
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 08:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657788412;
	h=To:Subject:From:Message-Id:Date;
	bh=9gXMHrJQJ7sripzq64MQYw/DhSgE2e1KWJWkrlQxsZI=;
	b=Z8uyvxS1HhNQe1PYOzdu/ko2EErVDqR/rQ/ElPc62FJyuxP/z3vmDxgfRqCfUO18
	GoAWwI4eoKmD4t80Zr3zvyvau5dBJ3Js/yVudQiFETit2V9ob3JmvNJrY/M4XQ1ZopF
	IlKGgtlpb/jHPMr54M16it0/LJzePPJXptOUOcwI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657788412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9gXMHrJQJ7sripzq64MQYw/DhSgE2e1KWJWkrlQxsZI=;
	b=AyYCbwjSrfoGrV4BGT0aRNo9u8uKhyROSY1jtdlGfVM841u4MnDojIhgadrGHJl3
	eRHfnQGIgwJVnM9L2Ow9UlFi2WWlSTH++Rx+AgBGjEAcS4N2geLzIJykVj4B2WFubEx
	6G9IUounVxA/Bgu3aqz2cZn3um7kWN3RghL3jikc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fbe3b163-4658c023-4cfa-4bd0-8514-28e65d1f19c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5da73626c49f06cbf0076353c65bf5a458fb74cfd80751f0c193ffdc0941967e
Date: Thu, 14 Jul 2022 08:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657788412
