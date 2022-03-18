Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA2A15137
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 21:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647639685;
	h=To:Subject:From:Message-Id:Date;
	bh=J88wP/AIucC2y5ktLMKHxm948rNgh6/O0Ise5AzG4cI=;
	b=P/gcwij5V6eTTMTCPBQPTc/oNgXGR/d7mtS3lFvGe/3FVBBZKrxip65+Y7qP/K+f
	bine3jZfDyhRUdCrXhSw/svk6J2QBg5hSDiRCQjy0L467wHr760urvagp/3DHGgs0he
	tD704MWIA/OJBtNT/8RU0DeBpIDdQdDqT5MdKN6g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647639685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J88wP/AIucC2y5ktLMKHxm948rNgh6/O0Ise5AzG4cI=;
	b=ZAwBMfPwJx48laJF/yPPzWvXYu0rJkCSlz/0mX1+doow6uCSjwwH7+KFe++cQMGr
	N0UjSu6dXQuRApr4nQ5YDcTJpBYYF8ysnJHkOv4wIKRpvI7GdbQd3rNCHWRphlu90Bg
	vnQSwSyjJ9GPHr9rYSLFrHje6CSIHkNvAhr2zgj4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9efa6694-17133b8e-fbe5-4856-acfc-a3af307ef521-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc3fd3c9445b2c39c3ba843fe4b66512f1dff4b45809eb0f155d941a85aae040
Date: Fri, 18 Mar 2022 21:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647639684
