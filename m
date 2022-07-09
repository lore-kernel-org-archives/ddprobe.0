Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD487E9
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657333012;
	h=To:Subject:From:Message-Id:Date;
	bh=ffn7YvsgwSXvMra3yyGo8N8hSHaWO8arLnvwGl5YYrY=;
	b=GWFuNE6Lqq1U1cUJmSW7yYAQ05Gz8o1rva/PbS1RI724pxm0LJN41aj2zIuGDq3M
	KtUrFE3QIm6m0AIeZYgRXwj5af+0l1s8On2Y8ndGAddTzlG6D8bJ3Wf3q7TIMwaTjgd
	MwU9+cJ7287RleqiH9EyRJppQNWdgVMRMxjUpHa4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657333012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ffn7YvsgwSXvMra3yyGo8N8hSHaWO8arLnvwGl5YYrY=;
	b=Vxz0JS9cY42lK5G65PgYVeMoY2Qdl0lY1YSU7GfcluY9TP7QKcxMvfZlF1fXBi7r
	OS6W8jFXCbyPzm5q9UBT7+hggBsiPpbXDDnrqqY8iGPRiaZkXdw3yGUM77stEc5q3CU
	xYk30lJnHtokHRQPC4tRB8q7LDhTYIr1rIax/7rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0bed775-a2031521-3a3f-406b-84d6-b47b4b27ca83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0494702335aeac2de928814d2627e6b323aa4b003293c9512c403938a3b0b20
Date: Sat, 9 Jul 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657333012
