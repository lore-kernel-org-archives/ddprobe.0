Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B8752566
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658943652;
	h=To:Subject:From:Message-Id:Date;
	bh=tTdy167CGtRAzIK2Z7ZhvR+9M+1hTMaT1KCZRB0KhHU=;
	b=X8e0C7YZFa7q+0bTEtI5GIG/mEvN3QKCXDf4ZLIe+B9B9SQrpdpVfwgU2FrdExqZ
	1ez5CFXhGFbe690FCnx06Nfu5hwGgIW+WDYjHqFihp9VHnbpWKgdPoJeJyGEa0kIcLS
	TL3xVF3N6+gwYMzH/wvSr6jCfnsBsHDvQwkeP3N4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658943652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tTdy167CGtRAzIK2Z7ZhvR+9M+1hTMaT1KCZRB0KhHU=;
	b=RZeeuXtpN7dWNlZC4DvZkcKHa8XxT32vUSVKeJx/TjPHH2J6V6yUvsvHyYlCvQd+
	Kk4Sf0OOjvAgg8rES6LTJNPcWJRIZQF4kuqCoSPgLDhBMRPpAUA4AIyGr6v6gUqyTaF
	KtchKCaR3xAwgpqHDheI1jN/WFxrcnsKHWYBHqaU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018240bf42ee-051b3f40-f650-4ffe-bb64-a4d99739ebaf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84f6a4a469d95a617aeeb32fe251b9325b0266f5fd5f174fed701372deff16ed
Date: Wed, 27 Jul 2022 17:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658943652
