Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255DE1383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 14:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652797619;
	h=To:Subject:From:Message-Id:Date;
	bh=aCkgFwILHfZislAwb/RgabKihKaK6nYwJKIZh0osa3Q=;
	b=HDMjCywJ1kpJsgTze6KbiDTOoH95RvBCNTb4/5OWRSHW7JJXyhaapI6v2W4VBhPC
	W6EEzoonpqPvrx19aPM/gvHYldrSxlsNKjhvJ8HyqRJ3409t0v1LupaMoPtlEEAHr3u
	FuCTDksh/bWDb6HxgoUxNWKE0Lt1WqXdm1e1IdIA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652797619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aCkgFwILHfZislAwb/RgabKihKaK6nYwJKIZh0osa3Q=;
	b=MwqI7CHIwVgr1XP269XJ6aKEeaQeQMTQBQ++PXcInNu/3LkMZdpYff+oHF+fRWfc
	YwVS2l8Mt9DV1W7UQifaodrPL9BwFIdWAOiyCrcqEf9eEwxw6zTpW1ouwT5P76Q6oS3
	jRRIdSlbKziMVcMaL6YTfUnh77vapWX7ohVmiQmc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d26a3c48-0354db16-4c23-40fd-a2a7-3b7978c1d864-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7d783050be4e719d7ab30d75bcf6328285bcc5fd2af969198045394eee8941f
Date: Tue, 17 May 2022 14:26:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652797619
