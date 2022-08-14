Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A0E3EC5
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660478453;
	h=To:Subject:From:Message-Id:Date;
	bh=91xqkL6DmqK9xADIEO+OvI/lOJGTshMl9hcFYp4hyJE=;
	b=ZeGNB4NgNtSZpLX5nZjS87cH6ojhzwAb11r9gpFVeTQJYMIG2tsMm1/fEMdfGDH0
	vqP9NzKCN02VLoy/4U/zxoyJyUzAou8J9FmrKmEM2ScKr4yuq8hyHyVtTzvNVcRO6Ys
	M3jn2fcMrPc2tFnA1sBqGmXiSSGV+FCUy0P52q7o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660478453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91xqkL6DmqK9xADIEO+OvI/lOJGTshMl9hcFYp4hyJE=;
	b=d28qPisrsJ1tmQNLIo2fP6DdycIRnLpjmTsWuzKZg71yfmzACzgMghm+tE3WXvGZ
	SBZT+ZMox9dk6+gutmXxBIfh98aq89Dv69tnIEryHwMbVbbn4DT+qquY4YpXQ3cqS0Q
	XNbtb7TKK6tO65Y9QnQtAL36gVT3BDIm2uaNNabU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829c3a7383-d3e89569-63a8-43f3-8d0b-75085173bf90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68b686cbf7fc4c8c0a91e353b2fb2413f110b2d939b6140592aba9b29d84b119
Date: Sun, 14 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660478452
