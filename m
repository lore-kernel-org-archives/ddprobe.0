Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEE5E7C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654849979;
	h=To:Subject:From:Message-Id:Date;
	bh=G5iCiOaNOjbW4rHj7r8wuV/3LVgwSKP8vn8/C+sbHJA=;
	b=FwpfwjgibUBHHylFvOZ3dtgVYJcOL6Rx/PVCABKTnpideV5+SyeAu96T3bgnPXTM
	6qsxK7wdpj8JElsrBd+qowpBFmWowTja4d4JhUgo4iuO6crP7vqVa4yFSvgoHvwrKCP
	GOYvqt/r3BnWYXGxFdhDMcAavTdsv/GMJfM65YUQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654849979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G5iCiOaNOjbW4rHj7r8wuV/3LVgwSKP8vn8/C+sbHJA=;
	b=YYsWTdpMzssWd1YlzvBNZyGfyK+BewfAeovF26yp+45JJueyzvz6B1QLS443GS9L
	NHmUM/eEhGR93yeU3+E0yM3GD5REUesSOOL+RWFYvKusWVwr3/TepPmZuEigu8AJNNQ
	zm5qaH9NO5H9EA2B9d8NSPizNbMzVdCc+WyQUABw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cbec365-7ae143dc-48ca-448f-be49-3cff1b2c2dde-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae05e0998da70dc99667a016d45bb0690f7bdbf1177165d0c2ed48dca6e9742f
Date: Fri, 10 Jun 2022 08:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654849979
