Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B2AC46B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 16:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656952012;
	h=To:Subject:From:Message-Id:Date;
	bh=VHKHQ1WqoAq2agK/AM0aqkQvWsUrgXgOrcZ+ZSdw1hI=;
	b=j4tw5nMkm6uwjGVkPh4YijAhbCdVcxm/ItmaAu0CYi1QCt9f8SHEGCvEbNrgnAfH
	DszQmEPYvFUMTFOdj2esCd5oA+vmJ/OYJOyq5+R8YnGbsLoCry54QoaGGEbHzjA0N5s
	5mdLsX2lPhcePrOklwA1qFbubclYPvWVrOzNJCCA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656952012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VHKHQ1WqoAq2agK/AM0aqkQvWsUrgXgOrcZ+ZSdw1hI=;
	b=d1sVIRA8eN59T7m87ft6fyNVp8eXB6bmcLJCku4YXPgMD4VIp+4+pLQegBxaK9OH
	8x1XzU2eHkm8fc4iyrRzRXg+AE8DQ+/Xr66wfas8WU++sK5QmO3Up+5Pr5qTARAiSd0
	TQDRd11v+VU20yDFOqlQX3GGRL31UT6T2gwXqknY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ca093dfb-c449b62b-103f-4dec-ab86-088140978803-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e06a12c413e9b091a4cb4b692e7e37251857824dba4cc9749a3d7846a71e8860
Date: Mon, 4 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656952012
