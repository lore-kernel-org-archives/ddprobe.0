Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8CA7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659039052;
	h=To:Subject:From:Message-Id:Date;
	bh=iK66cocbGfLZf1VLSM/bNR54/P0Sw9WUTC2HZnUi8TM=;
	b=R2LtTZGQaASY2fhlYzsqBhwJDP7wHu2fqhB3HIFuWsLL/qIrRsudKNzox1Dz8Lsk
	XqDNaiqXDf7vVZAvm2fh59LA31NMifHv4PTPh5HBJlEi2ZO6fZhlmzPaa6Lx2X/jPXx
	Ft6I4IObq/WpdM++CvFeZeDEzOXwyeb4367w8zaQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659039052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iK66cocbGfLZf1VLSM/bNR54/P0Sw9WUTC2HZnUi8TM=;
	b=SxiK3NA4WK6vRtVa/6EfA8uCJDwdkPlIpaWNgFfWE2DaERyrdA8cNtL0JkXdxCwP
	2UK8vydX6RrM8h/vynJTFQxD22Gw93fvDnL6+PzZ5+Da/CQLTfOd7vH+VTvAYOdV+jw
	JidoKqMRlcKCuvLA20ltWpkB1RDyM9drphiLcf1I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182466ef2e8-9faac00f-bf75-48ad-91aa-dd4f645c1630-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9452093f8e6c836cec2f87179768bd79a89e8aba0c0a15362d545132ddc6695
Date: Thu, 28 Jul 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659039052
