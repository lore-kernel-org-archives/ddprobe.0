Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5993D2571
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 18:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650913018;
	h=To:Subject:From:Message-Id:Date;
	bh=YKZOIp53ofP/toQk0kWPufIMN830F9wue8ONxLPtT2I=;
	b=Ovw/FgUq3WXBGWK7+PSn6RgqpQajSG/VuVx/KYJh0VDkZVyqppZyyA7Lauc6vyDQ
	hxiwwoa+lAP6i8prU4OJuHvkYeJ24uSColO0ztVowCxdttPAUsW+YQ4YDAJ5nzPNjFL
	W6JIFp4veb7M6eKLoID7vYTUTOjE7t0DU1/humU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650913018;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YKZOIp53ofP/toQk0kWPufIMN830F9wue8ONxLPtT2I=;
	b=YDj+PSArX26NzfX7mnzGoNyXBrDF+LJdnjokL0FBNScK8IhRza2y4zQ3r43COtRa
	Hya7KtjoYzHlAuubLDEvysJsiTM8/BfEZTRl3v7392L4AV8vBz/TkYV8Hq1VH7FaE8S
	GoxEGo3vHeGZg+3ZuJ8hjcNw53rqHPY6kADp5pz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180621581b4-fdaca54b-bcd2-4387-a0f7-487bbce3c2c5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cbe2648668df3a032633d0ca3060789129cc79d044c3aab0cb6497d28bffc3d3
Date: Mon, 25 Apr 2022 18:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650913018
