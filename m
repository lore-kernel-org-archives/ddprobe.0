Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 854697E
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 00:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656893212;
	h=To:Subject:From:Message-Id:Date;
	bh=VpTAj/emKT/f0A/BMCbdF0lADUkMKwwTeY4gTSBmzwY=;
	b=UEYLuTY1/K2LdJSKmi84i5iLJHtRDHnsTLywEb96jjZPajRuhK90zMD61EJgefls
	zgCnAgecUwQf/EBan8AjBjFFrQcwmgezZE1W4pOOsTiB4cyD2wLAmU3STDNk6q2qj7E
	MCJwtyBlx6PWQGrD4QQPDRLQp2ILdbc3wxpJbBOU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656893212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VpTAj/emKT/f0A/BMCbdF0lADUkMKwwTeY4gTSBmzwY=;
	b=Hh5wsmqMqGMQuUQXV0Y810NbEdkSfhx6OJl3Qhbhj/0YQ2+YhftI4lfNGIkOsfZy
	agKx0+lMI1dS2wBkP+mRxLI94CMjH1uQ8Mjhg8JrlhzZcl3AnERPXIXF2mg0rwzCBmv
	DPbNohSrVuWO16rAtC/6p0MItTDBf6ZQGJzQ8WBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c688069b-bea2cca3-0a1e-4ef8-84f9-3d02c488c125-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d11d26941317cc091fc96f1f5b9a29acae0f6b64fa10a2905b5ca7145936c93
Date: Mon, 4 Jul 2022 00:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656893212
