Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFCF320EA
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 04:19:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649305198;
	h=To:Subject:From:Message-Id:Date;
	bh=JhJLygm1cz8AgHuZYbN0YbIyeVXiU72zffoMr4O6Anw=;
	b=mq0xiRKxbAvRPtEas8A09x/IIVwfRnjkHELuCFtw+Yn7SDLB37Ui4BSHMVDuSAqU
	q2BINojWFYWelg5tZ2pifNXMv0IPIcBMJLJOM5bEn8qA53CvBtTzQ2k75t3UHqv2HpX
	QOchGS42jioj7IcquUNuSuv3GMyZ9UMtime0gBRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649305198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JhJLygm1cz8AgHuZYbN0YbIyeVXiU72zffoMr4O6Anw=;
	b=Qw6dqnxcdrtD+g42eFvAssXegCJ0nK+vB+amjFrgDYPHW9R5WBLTxr3tElbmTnqZ
	nCIHia3rTcLMLqtfjRPqi+4J28I66yfr/vUgfWrli7wjAYiBxWvcsiVlT+PT1nB9xfj
	VQ/0m+r/EgmgL5fBl8AZ1DVS1vWlDRR5p+sTgt2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018002401e9a-ea9eb3cd-9e15-46e8-9191-9e5dedaedd81-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c7dc8cb0c855c54fec7ba8ae95a99990b6a3c9d471eb8cf6737e254b9bb411a4
Date: Thu, 7 Apr 2022 04:19:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649305198
