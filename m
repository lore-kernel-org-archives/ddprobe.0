Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9E07E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 19:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658605612;
	h=To:Subject:From:Message-Id:Date;
	bh=6jFl1a8f/AGtbEz2CVpVwcb0kOtGwheSblkt53Ke1Ak=;
	b=lR53Ril2lWcbMbyPh3kEVBmmM6wab/vDwdK2IkrpHkxKE1QqVxJovxcV2TQ/lvEn
	Qy0RfTZxPc9Wmso/oh4PMssV+hrOYz8OoS8JaKzt7mFqlPCuxvj1ChqHHW6ajBQ9YQD
	w8a40upiSjyoo+RkH+7MbyTTgGwLABbx2UDg89qA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658605612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6jFl1a8f/AGtbEz2CVpVwcb0kOtGwheSblkt53Ke1Ak=;
	b=BWyQAesXAlKd/yb1Ins6k5PJHWzMWyYCdwQ3Q8TiSeiEU06O0tDOqeg8xJdiIXCL
	v/Uiy9b8oZMCmmjWgNUaJL7pty4etTpzVYWINavvxvIBnJTMtscGZsDvI2WqPxTfXPN
	NP38cJXQKXasYmO9YZAW90U96XpzDArxVEERMt+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822c992d0c-ba9da4cb-9a12-4b84-aefe-1f57818ccc7f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42befced1c36b6a94e958bc0eb6d7750a932aac568a13d8897a53df2802b11f4
Date: Sat, 23 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658605612
