Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F29E523C2
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 09:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653729779;
	h=To:Subject:From:Message-Id:Date;
	bh=NEtwwulRFqnhJpy3OE+sUEqTBzahICPXJXikcLn5w+A=;
	b=f9c2WnB1O2aqreX41Ee+kuuarUDw8vPqg/SpGYPeIml+aB89V+BBmKbqRXO0Fanf
	Nxb/3KvLTmeli4TGas8aZVjnkxTXGp2a9NbgmkWZscAxmnRw0BblP8+YpcE9MPVr24f
	1fgcyTByVo3ALRpDMsdk0i4HN17uGV1og3ognkqs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653729779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NEtwwulRFqnhJpy3OE+sUEqTBzahICPXJXikcLn5w+A=;
	b=b2gdMl8TYQ8x5yyuVszz8wAHZHz7Wgz+r2XOlY45yEHEGE/Zwa8GZmq5niTZtsxK
	AYi4PMdGZMk0ejTnQbGxTEU3cUwMcF6XpKPIAmZ98aeotaKk9SIzxj7Pm7BcTK0U+UN
	LTL8ZJbjztCRzeY0hqpAe6PRkKftH3gyskPSGGG8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018109f9de26-98160592-d699-42bc-88da-3ee07e3859c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09747ffdc5aa48fbacdbf527a9e5da3802180b927daef9407d8cf883fbf32bd9
Date: Sat, 28 May 2022 09:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653729779
