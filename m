Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145537A
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 11:13:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650107638;
	h=To:Subject:From:Message-Id:Date;
	bh=c9UapbUdiE+tTH3cQUg8gu5n0kWtixAans6Oe/QnpWM=;
	b=UhJRH4LWKTdABsGc6aXgkG/bPY6U1vW9po3hMQDpTtJkoTUVrntAlR1jFFjpLtsm
	qRxorm/SJXzA69L7wBQQqfqoMZssHgqO0OAwpVq6tTlYfAYZUplwZ1mpQkrgGlMbgtt
	5nbBWy+2Q0p2Vzv42GoyeDNVzTrbyndZci036rSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650107638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=c9UapbUdiE+tTH3cQUg8gu5n0kWtixAans6Oe/QnpWM=;
	b=KA0E7sFd2lLtir1BbUtfzgsIemuahsSmtuTUIMC/SnJuvh6E0ZRAOYXh0QEfb5Ej
	FYs8BXi/A1AVTYE68jQc7oUbiiNjNvcSHcmcFNSMd8pRX9+igB+6/euQtH1KtizjmXy
	cTGGwHWCeBCxLU3JJxnCmwsNXSSO1Cw/ccDy0mb8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018032146234-b3818ff0-55f2-43df-a49b-65afea8e4c51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c66abce5ab0de46ae2bb5d0e55ac18c73ea4009af54e9c0fdea523c7d15b4a6
Date: Sat, 16 Apr 2022 11:13:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650107638
