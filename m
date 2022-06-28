Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F97367
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 05:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656393412;
	h=To:Subject:From:Message-Id:Date;
	bh=C19Y1phMxs1Yo+mavAAvB3gouuYkTkx9jxj0T/lUc4E=;
	b=C+03XDHanML7CetWC0NxnQZMZZUt9Ts+FJcZ812ZF0ZqeRRr0exFnpjDgv+EZ8qm
	ER7/PTFHe8ked2Fqq+X96E9huvTKkWTy7PmNZhoW3m2z4q/VJW9HXVoZa142kTSgNzf
	SiP5SKwsGZVliiMnGyCh8ly2awJc48Lo5Noi78P8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656393412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C19Y1phMxs1Yo+mavAAvB3gouuYkTkx9jxj0T/lUc4E=;
	b=KaR1ehH34Y0OyJVYziNmwOf50AVEsmYwFbwTQjzRaoHa4PKCDlA4jrSfam0Mf3Z6
	HS8BuCuqPHI8XisJx87A1MSj2Mthi7nhTYpJslMP3U2tPpYUcquVmYqgZiZ/3O9tZYz
	/NEx6F0ap2WYjn/NkJeXFrxLmeTCQsCVTe6U/9SM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a8bdaf10-49bc0781-c8c5-4d98-8dc0-ea226e59baa0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45b2195f891dda7e0d58f5814bb4d9e5723f7802b11d38b47749cd6c114e7c16
Date: Tue, 28 Jun 2022 05:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656393412
