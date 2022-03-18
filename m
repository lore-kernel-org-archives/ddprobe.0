Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD054C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647611484;
	h=To:Subject:From:Message-Id:Date;
	bh=UR08u2Hczdjg6UHS90zYgk1m50e7GsJ4BmGK94o+hSI=;
	b=ga4MdqYbAlubrfa+SKqbMqrgivjIIjXx/dil0njR3gVuL9Pgkf/3sduGBMaULHRD
	np0xJPcaIySYceBeT/iqRVmQidraxJmBKP3i1sgAO85+593q6OCTDEUac8LS7XJdMxs
	+fxlLrpP8MYUH/nqSop0yGZfDLnZHmY5048Z3EOo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647611484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UR08u2Hczdjg6UHS90zYgk1m50e7GsJ4BmGK94o+hSI=;
	b=XHw6l6RKt2WaH5n3aJ4JOEv0mkFJIEEIp6qmJEKQAXts8wD2xYxB/XjkbsleHK0M
	rn/6YChll7p8NPFHZSuPlAgiesNNmKV71LD2UKjUKhsEq7Cd/44TXe7aZlXI4bBwhxs
	L6VkBfeWzNx2m+P6fn+bEklO8ahOJ8xt3BKUph04=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d4c1a48-7a8633c6-9df1-4453-bc81-d0e5df16e6fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01338e667334a15431f81f4282d1f74bcf597e3576311a8e129921719ee1034b
Date: Fri, 18 Mar 2022 13:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647611484
