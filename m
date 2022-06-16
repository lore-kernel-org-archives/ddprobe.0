Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8EEE7A
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655365019;
	h=To:Subject:From:Message-Id:Date;
	bh=Di7CFoytkY5SbSES+ot5MomiZD6y7i9m1LON85fD4lc=;
	b=Mv5GxQbTExs4ztaq90d4yBvwXyz02qr3kppTKdwXD58V/QrkgWgSobtrqhdehToX
	HhLnBFhWIFB9rEG6CIQUEEnB46fMomgp2CyCok8+zXVaif4V2O1PCULUcgBjOwHOqqd
	e8BgkhxYeRc9pA3qky0iRYazIogwCqehKQeDaI38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655365019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Di7CFoytkY5SbSES+ot5MomiZD6y7i9m1LON85fD4lc=;
	b=LB5vVhhhaIz71pHlbuKqoBvXzA4cM0dXV4qpFyuemNHk9yepVRSS+WWbI4U/Uxrn
	1pCNIziMn+WB6oFadcKoDI1T5AafOkqKKYGFbN1xFMtaMmzqg9UMFKpbt2/7VxdS9eD
	FSwyu/lL3sSZcmXAMMLnu9R1yT+eMzlmUS2OsytY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816b71a669-b4e34841-c1bd-4cf4-bbc6-ce8d5ea8503e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 246ddc3ccce8fa18b31ff8bc167c2812a5af1d5917f36ab20616fe0208ca3fbb
Date: Thu, 16 Jun 2022 07:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655365019
