Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B9C7B
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 09:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658308012;
	h=To:Subject:From:Message-Id:Date;
	bh=WDrp0TdJCG81mvdAA/mn2vYrSJRyeR7WKeN1sqtVFBU=;
	b=WC9E9JgIcElaJJ+15P8B836KpG7fq1pSNITZFeM+NmD3ZrRQ9PA7xTYCAFWmnzGO
	03grv77DE7UcVkOmdmSOIgHLx9PAc/mkt9lFgZRn+O9RR8Qqhq+Sf3ba7LyfHaSSWUu
	M8QldHtkzbXEYq7qn6JfLIDv3dF3N6FPW7eogVNU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658308012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WDrp0TdJCG81mvdAA/mn2vYrSJRyeR7WKeN1sqtVFBU=;
	b=bO5sBMM3EIGCVivoOuBJhyIwBT2xGPbRSrWGUsqiFPLrRofmYXAbSY15Knb2JuOq
	P+u7Z3Jv+dIVUQxZGIAmSi+eSwlvmeCQtfMvMaDBHdV2mR8ea51BY91z4bFajRnC3qW
	X0huf7Vf8qwHZsocm8MxRQ4oSjVJZkH76OHRqKgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821adc28f3-f8129124-303a-4af6-a1bb-4666044c3aa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aefc0d316d2f64464f82c2a69c89ec405723bc90e03c6c2341e838a445fdc235
Date: Wed, 20 Jul 2022 09:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658308012
