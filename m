Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4232F31
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657891012;
	h=To:Subject:From:Message-Id:Date;
	bh=Nw38fiJsmCCCn2ceoen/HdWht/+oCH/penDrHkxveJc=;
	b=RMfI/+b2oUieVahoWANm93IrY10iInegyeEk4mJdLf44mlM3jJfIl8A3gvInbPTn
	ox/sUXoRZrWFD21ZSJau2ALR2nOmW3yzzZjQcqbShcEZCO8b/tWFZxhlPEacrwNXvUO
	FV+9b6hEYCR7KJSa2h+bveXWrhh1a8U6lua58TMc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657891012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Nw38fiJsmCCCn2ceoen/HdWht/+oCH/penDrHkxveJc=;
	b=Ss/1qk9FYguXEgFggAY7RsKKqoZTimyi8cEGz5t1HN3GhlF0E4JlMG9RVS4C8azy
	ixzb1Yp3v0civIluxYD4HChM55cjmoscoCVcJnIjq1WlIsj7e7/Mbay+QPCraQu9Njk
	VmTS1Yn1GaYqTPhg1Yyhu9R9xNfYgaajzl0wbiTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202013f47-a4634e82-9217-4703-91dd-b04e0aac61c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: caca4a1ee2d46ce628b74ab7c425f6627012823b605a7521835c9293457cb9b9
Date: Fri, 15 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657891012
