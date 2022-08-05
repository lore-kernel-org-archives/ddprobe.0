Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FAD77C
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659700852;
	h=To:Subject:From:Message-Id:Date;
	bh=yvh2xMxoLL/r00adePynMBnqrBBgFlxfsedsANEbLfc=;
	b=Azqd3t3PaUYcBH2U/yn3RDqTYVSPwfW3wxvDWv36QTPN4LsYq40GI+p65263YrqB
	dsw1cc2CqhjoxOOl51C4ZkKETJ1NFIvWuNIMfAMuXAMjq6V3b3oc65mlj2p1l4o/eFx
	XoyVXY0AxAgkvestHVvYjg9w5jRQ0cncpuv7hcbI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659700852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yvh2xMxoLL/r00adePynMBnqrBBgFlxfsedsANEbLfc=;
	b=PZNAiGHFJlsgO5RwK8ya74sIfjSXveM7SFsqcEFUcUfLgj3ShEfnZAQl8PHCpzy/
	Y8Cgj2AaOmyoc9gDyoveJopsQjkrgnTEA/DgMTAuJ4Du86xS/twUsV8zENlI7lbFS0f
	GzimKXV6HXMQzImpg6hnwusttPBBIGtrf2SJDFjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826de1376a-11fe5ca4-b351-4bae-aa13-5d724a042cc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 19836409a832391c18bfbd207499c66aeed5124400390d2da86eeb515a3bb686
Date: Fri, 5 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659700852
