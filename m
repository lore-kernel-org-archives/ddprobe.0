Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0930A7B
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 08:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657355812;
	h=To:Subject:From:Message-Id:Date;
	bh=pYIppbgmVA9y25V50mPbJCvzz2s3NYVYv7SI9QlCtBw=;
	b=MuE3vQRWe1K0V91sPWSGiwevvLVgK+VppT7rk7SOMGFFnlGbtkOTSRj4Nj56jVwX
	6xxMr6lHf5jCXoAA/7LPA83jWywBAWtelJTeuOInEf/apJVP/hyMjROPWMPRXrVZftp
	moJVsCzqJS7rqDqUUdzXdEzEPLfnpjNAbXdHdvtM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657355812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pYIppbgmVA9y25V50mPbJCvzz2s3NYVYv7SI9QlCtBw=;
	b=Fh/ODzx+HHzUfkX9Rrqc5X5OqZWjN02UrN+TpxWGOFXvm/YQbE7qdlDrX3ORUKj5
	j+hhLDRyEQzO1s49ssB35iS/6oyEIZORmhIhtI84AzV2OH1DZJryqOAHJ3gutnLNs8A
	s0b7araBstqIP+Rifxn/XAywSJ64Lpr0gqNBj85E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e21abdbf-32ec1f4c-863a-4bd0-b736-f01ed24ad20f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f56557d3f66e1b0645f96c6a63fa734e6b9b964e0255943c9efc981ccef1c78
Date: Sat, 9 Jul 2022 08:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657355812
