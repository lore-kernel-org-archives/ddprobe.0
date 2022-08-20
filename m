Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607852F2A
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 19:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661022652;
	h=To:Subject:From:Message-Id:Date;
	bh=Qvd7K1ZFpyRlPN8mbqWxODTnrVVn00V8yp4mwYBy8Io=;
	b=FN0nYIBZ1NZdD533txNCkBW82rnW8DDrUbQDZC6fJGuazDFRzYMQCPQWg/PmS0GW
	APiETSCFoaozgyCRXfV5d1Z+RPwz4KLscqyimcIRE+e32R2gki6U74yzp6EEr3gJCVe
	jluNs/Go9Kcz/hGnezB36TX9pS3xhf9ORc0Kb1Ys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661022652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qvd7K1ZFpyRlPN8mbqWxODTnrVVn00V8yp4mwYBy8Io=;
	b=Nb5TN8BhsQiPJ7rKO5RzUwy/fAumxhgBXonv4DB2CV3jJAvTtMeTYrlA+hchXLJq
	viambKPmGtIkt22Lppz6FXIYDcv3W06vNLcGiRuvCfCjtlL20ofWQ4nU6PgNlJVpnTn
	OkBztlI/Egz9JekUwYqzxEX5VqgGmog+3+bGT6Ok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bcaa48a4-b323e40d-ea3c-4926-919d-e12603aa8f2c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 866f2a037a61142e961a05b138e7df3b893418858e564868075ed984ded22598
Date: Sat, 20 Aug 2022 19:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661022652
