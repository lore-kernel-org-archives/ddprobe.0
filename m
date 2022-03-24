Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2790C23BE
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 21:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648158958;
	h=To:Subject:From:Message-Id:Date;
	bh=J9ziNcliYpFFIBgGFcjyJyr2wPXxqfOVKMGlGsctEpg=;
	b=Ho2ta+jQm3hseSu6g/w2Mi0dPycGVIpSidnSfT7Z28fq7HA47dNuXdPLe2HNjcls
	opexk+qN+mC0TKQ7HaXCYLa66qlKAe6zUdNWfqL0jZNcckNrPG0497gVLffBg1xzNrt
	RCbWThzx/gtI9y3MQ9INo1rwRA2Lo38u1F9Uja0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648158958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J9ziNcliYpFFIBgGFcjyJyr2wPXxqfOVKMGlGsctEpg=;
	b=iWEa/rBTL2sbkBQIZiEYNLkukTfi7vxneod0jmsPInU7Ty5KUeKSV86A4JDjFra5
	83rUbwUcwga3l2iff+CDsuSbMSlhM2FN76rV7xlU4aw6DR1qsgtLkKYFeA3j6aNftB2
	o+QQ8pPqW5+Zw7LFM1s3Td5qjOUJ77K4Wno/1GpA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbdede2ac-887ddccf-97ab-412c-8341-1e7b33b87788-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0d4a5962f535e7ff4a7fe24290146cecf098437dde31e3e8e086e8909ce70de4
Date: Thu, 24 Mar 2022 21:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648158958
