Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E35564D
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661147452;
	h=To:Subject:From:Message-Id:Date;
	bh=q+f060U//p0ANyUouyU2fijLIr3uxz5mcxEmua829jk=;
	b=kLTzut71iZ/yy2Rt81CHzhc55UUZ2L8cOeaFnsvXUd5dCZdN+cJEnoyDqwLii3I/
	zT+C/JeuJKMqNG1eKNdPSWUAzVE3zEzvPe9cNkixWylw+pDpTnirQvUrkbPfoxZ304y
	hAFMn07G+B/T37cahV8E8QjcqUB9XMB8OoXj3yNo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661147452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q+f060U//p0ANyUouyU2fijLIr3uxz5mcxEmua829jk=;
	b=O9p8gV4eL89gXs+UqObYrjw12OIcQkLNcEOMjv1F2EeHvKwDOct1H3nxDqgta7Wu
	97NMgMFDRyPeD9wZpu9pYV005VGAA+J4f3FlzpALiiuidw3bhZf9hrMGs31GmRU6kLF
	1Ia2Pfx4idqqp6nHhOV2nNgWb8UE5v7ICZpy5C/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c41a9484-82e4b09c-b094-4830-a7f4-1157c791e40f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d296460727ec4979f5dd313820a6c95a7997ae98fdbca0e0c2d61d6db574183
Date: Mon, 22 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661147452
