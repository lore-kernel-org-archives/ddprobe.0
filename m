Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C02B3D66
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653261299;
	h=To:Subject:From:Message-Id:Date;
	bh=7S8K7Oy+kwGeByXdM5H++Yx6N2pMv2o/CqdZ35VS3p8=;
	b=HrPkTn2m0YgqlXsKqNCh9dN3/xlRLWkeznBaCbINLtUs7CIiovsgC7xUtR02TBOj
	3iOrpNELWDAGSLKBNSca3/zT0Z83IM30SvliCwJuh/WWeiO2SQSz2VI5Sf8+26zXDHo
	EgLHXUgJKyvS9xDGlUDRNVky9oBFPr8p/vPTQ768=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653261299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7S8K7Oy+kwGeByXdM5H++Yx6N2pMv2o/CqdZ35VS3p8=;
	b=IQAb+zvdHQ1AMTnc7ggwpZ87N2ffvUYzCxuzoBL1UFKhIHdjTQEpBL3fNR5DZ+7o
	xAzNP5RRHl8+vrrKJB+2qj1AXvrd5uK04zIZ9Z7hGIuIokMuD2e14cSi9soI43Z8jed
	k1uZG0dEW22qVl9N1YKx7amjtot1UOON5tgqeV5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ee0d6e88-a2ebec7f-c347-4a12-ae78-dc00693bbf58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c228f44da42353cc6374c2284049fc34b930a8bc993376bce03bde69f79c2ed
Date: Sun, 22 May 2022 23:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653261299
