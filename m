Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E2AF7A
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657549613;
	h=To:Subject:From:Message-Id:Date;
	bh=TJr2t0ZEZA7dMXb3hOUZP/k6GPYTptfjm357+3uTVZ8=;
	b=Sw63JSj0Fji/SyIUphV/CG/79pdL+fm9zxwecfGTZWPmGoaN5Z+VbIZS9Nwwfqsu
	XLusUrDOmpYo4YpJYN/KentHlsdEVL7plXTqWEVDkQ+Pg9Erdqjh7pilPCtrrQ1wnsb
	3wcIeHJxOMgws2YxIVQSEWQY+yCNck7+m4HH7+VU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657549613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TJr2t0ZEZA7dMXb3hOUZP/k6GPYTptfjm357+3uTVZ8=;
	b=JB6OkDjp9VNdk+qUSvDeWj8n5cxtLHjylgh261y2BMm29Q0yfkrNn79umJ4ltYFW
	tFRUHThJSzsBmyvXun4RijKeV0snMXI9S8UydD0Cdnq8Ltp94EQMZ+1RelJn07bJYb7
	Tm97xrH3t/m2+47M/ToDJPWwdNL0ah2x3E0ozU6I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eda7e505-dcbdbf72-0e36-464d-8f40-0a6653206406-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d20d64f65885e9771c2725a2acf519b88b97dc6457738e8a36d2b20f992c92ee
Date: Mon, 11 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657549612
