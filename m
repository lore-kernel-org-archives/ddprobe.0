Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B71851
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 09:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655197979;
	h=To:Subject:From:Message-Id:Date;
	bh=+GvVQKpHgzfldQj04ErJQDpqLZjK510HictjOl1FFMg=;
	b=FFuZMgN+2ImtClN0+5+vzXgiW0fgHynnyyzSa7RnWLHf2lyvPr/E6KlwtwjWVn6M
	ZBVoTfTcl5+7AUPIBIaay6UtWF0J9fp92RhjyWYVkBK5WYIXonQrERRLmY4OoeTsDBG
	7s16HeUYTtjRfunR8Hl3iUAXAIIGSJI2eEMFbE2w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655197979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+GvVQKpHgzfldQj04ErJQDpqLZjK510HictjOl1FFMg=;
	b=DgWLYb6Enkj2YOIXQ1F+mg1kAjIdap4CL+QKr1uSDBvTCorg928tGVAZHyCg26af
	NCbxAnXWPd4FHqvFqioyIuXALs1xrxCNqmUNA1hyMy0k6hC8ZUqL54WEi89/58X2hSx
	6O+z+FfAN0s98YlJ0QxaQJ72VtAKHO3nqhNCDgn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181617cd27a-7f8ac450-3c73-432d-9273-c066c84cc205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8757a7dedb2e33fb11fb402e135010e65e5aaa34318f56732b1ab23fdf3ff46f
Date: Tue, 14 Jun 2022 09:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655197979
