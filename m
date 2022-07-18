Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9C8320E
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 15:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658159212;
	h=To:Subject:From:Message-Id:Date;
	bh=4YAWiUaZY9+HR8yK7M0yWBGxh2vOT3e5hgJ45Q7KD5g=;
	b=YnVyVfsZpOPcEeuidoABQOtRboP5dt1b/Mqf2lDBzlg0SF8bOUSEecNaimNcYIkD
	1dm/+eHb8SPZBciSFu5YeaylnQFa3utR99+84WmuoD7WmH0fYGVUZm17N66qNAo3qLf
	4xV2sks5/1khMi+g+XDBoBw09Rp/EhpK258QEV9Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658159212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4YAWiUaZY9+HR8yK7M0yWBGxh2vOT3e5hgJ45Q7KD5g=;
	b=HtRwKzc7DqT1VYm+rNyzTi5qfnPOJyyfrfY7TND2CbtAndCamXkDRsT1nT88MvNm
	ewqjN5t2Sqp9vQdr0EmVh0Vs6+Zx0wMu9Ajk7APQETfWzg5y0VvLxM2it5q1PwcCLIS
	BwyqG3vzuD+hrWPW03bOcH4UmFySc4iqTc70/4F0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018211fda705-fd68c9e6-fd61-4991-9a28-a92017ac3cd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1a6a6acdbedef2fa6c64e414cbf5201705873e2d99000e4d63711a6cd1b12404
Date: Mon, 18 Jul 2022 15:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658159212
