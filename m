Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688ED3232
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659742252;
	h=To:Subject:From:Message-Id:Date;
	bh=6+WcrVbijc8e/rN+MR/yx5WpezcgrD7YJdaX7Dy7al0=;
	b=jSTaksLCSiA54IL/goxePrEnUiXZLifBq1kmzyrpzZbHWDvg5qPjmDgQnI6H1Qfi
	T26cOyjDNUvcXwKoCjdqbEMkKvKeCrwX3dbNV08jXTqqh+EFLH2PCFpHQ73rvk5riA5
	GmrBoXdwiEy61ZKbWj8malSywukH+IMUhpcSQtoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659742252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6+WcrVbijc8e/rN+MR/yx5WpezcgrD7YJdaX7Dy7al0=;
	b=iA0SpDXs954AO1wIeQ6wid7p/e31yioiKnkwq/5uEzKomBqh5aOWRXIdjDAXjfd4
	3hxQ1kLXeNHzbuyqwOG0tEI0jFJZrCVoe67TZ/SOdQmEzPkEPaT+YL3yqdoIVa/xSBA
	CEUN7mq1j4G6RiICAqca/uSVmFyt7XykmlwlkGPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827058ee72-ee7f5109-9d5f-462c-ba88-a184ee9eb4cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76b5d3f83dcd42edac2193b7754fe9655e490505547db8ca720101b38b24c115
Date: Fri, 5 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659742252
