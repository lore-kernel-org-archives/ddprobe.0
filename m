Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2384246A7
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 07:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653638339;
	h=To:Subject:From:Message-Id:Date;
	bh=QYDkkfy2Bj+aufNjupuODsRfZVVk6KVTxAR6VbNA688=;
	b=EckkkwksU+WJS1fUdoPHzg8Fbg2e1KEWMpNLi2vro6B6OHQErqkx/1Hx1k4f7VAk
	J2C5DI6sMJWJLi+vBsM3HW0H1iCCjBDqqsQnvpsHFBiqFFLHqlvf42ZYzmWcvPXbc3o
	ku0NzHOEpm6mNPg5NT5UMTQ7wOY3z2KmAk6HEbuw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653638339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QYDkkfy2Bj+aufNjupuODsRfZVVk6KVTxAR6VbNA688=;
	b=K2Y43fhnXMbbQhQur6XagVZ1N/kEmDUWjCQSHM8499rX4XnnIMAQjv5vJhFbdO52
	dvvALuRszue8y0JHIY/pQTUDs4Fzd91IIbNBdHTGkIUdQdq4u2zFGNdDH3ovBJRPW0O
	vSISuyeb2hjcKsfzlKrIY+ONNuj1w1FQ0Hv0pVzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104869ab8-ee1ad5ef-822a-4a1b-8fab-61cdcd1b5fbe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01460cef5c4184d11b2dec62b8f8fe325c4012ca1ff12873e7dbf567c07bbe6b
Date: Fri, 27 May 2022 07:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653638339
