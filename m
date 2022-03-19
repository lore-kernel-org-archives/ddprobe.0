Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B534C60
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 07:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647673285;
	h=To:Subject:From:Message-Id:Date;
	bh=MzRuYaFmkvfU8R4bHgjHHzzxUwMvu4nLeKpSrNzqA/A=;
	b=TpkdBnRkiwdXbSM6DZm/v1gjieEh5Md08oaKFcGR5lufzhCAj3/0h2gLxdavK9pd
	/E6ifnHlG9wRsjKKN24JskMjSYS9pFZZbh03EK6Vf00MEWxlxJd5Dv0jnwSIB1esd2e
	WYBSIihl97KU7H0XvaqoBEdEO2jYEpjJD73l5sqg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647673285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MzRuYaFmkvfU8R4bHgjHHzzxUwMvu4nLeKpSrNzqA/A=;
	b=a0W/9u5CFLKMHlg8BDDaOZewSXZnF4/r947lHhEOERTSWmMlncdljKRxEXHIZlts
	Z2TdnkDscxGzXZJ4NSFXMbQ3pZlWUjiY6cAnIxrwEeG9gUCshUwTLoQVEERnxxyyqIk
	5N1Y/FJo2javhlwbq3OOt9U1uTSlhuChleUaACp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0fb1891-7b8bbbc7-2f0d-4c75-84ed-a2053b0b5b1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d3fac890f6b817f377112090ec943f3ea035b2804b48083a2429ef0587774b0
Date: Sat, 19 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647673284
