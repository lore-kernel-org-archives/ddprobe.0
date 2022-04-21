Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 224087A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 14:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650549718;
	h=To:Subject:From:Message-Id:Date;
	bh=Wfpny1Ms3jBy6Zhj5AZScOHbgzTrqJVgfz5W9fLPKMs=;
	b=mbQSyJrR2Z1M6wqIxJZhc6ZYaDttBzaVb1YoXZQOpceFnZsl63Ba0KMceqNHTe1+
	O8aMQMCnJ0A/l+n8WkGgGwFmycmsFaque4rXsW64Ux2Mq3G6TrATc4oo79wdvfyf6KV
	c3f7Z86+Q+1BFpo6ogbnjydIgyxR9qm0z51WkvXs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650549718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wfpny1Ms3jBy6Zhj5AZScOHbgzTrqJVgfz5W9fLPKMs=;
	b=GS8pAaxUAvQuX1ZC/oeNeZmWpMrBQI4h3hbVs5jLmM3V6xZ+ayoAp3UKEjOqCjK0
	RGVUG1yC95ItUp2/y+9T2+EHZF7qsNTqaLA2gvFBY1eNVR5w1CjvbkGM1ZgPU6u8Mes
	H/6Xhpjhnbhov2UWOv161/mYEeewtWm9UlWW9pYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c6dfcec-ed3baa15-dc81-4ac3-bea6-19c3cb7a0663-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 261460d2c3ce9d091d216b7c3488312605c812b1132d291afe759171d039171b
Date: Thu, 21 Apr 2022 14:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650549718
