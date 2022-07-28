Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F29EC6
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658973652;
	h=To:Subject:From:Message-Id:Date;
	bh=FTxRc67M6VGfXWaA9F+W96P1lAfJzWpfq0dF18UgED8=;
	b=NK5xbApUkrmwcQOP1AOlVxZ7rtsUte3lyIai2i8Jh6A1fg7CEE+muTHheVk06a8A
	17xqEhEHWFkjewTGKIK/dQXTUYWDFeEjZ6YxV7u0YUSaxO6UUqNsaS60yK6IPw+MONu
	Ue7Kd4MS+8vtLzcgawvGraPmW46rRiVCPUdZbh/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658973652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FTxRc67M6VGfXWaA9F+W96P1lAfJzWpfq0dF18UgED8=;
	b=UQ0U5Hc+hZYzcH2nriOsC+1lw1d7a8R7Ru8TPdiy5mkhiRFnwZFCNixgvRVwrMIJ
	QiZc9/kpZwVueBQb1znuYN5aQaIJJphws+AsN42myLFTUQbyaVVacM/K4O1txjSxhFs
	mKqb4mhDwG73qtX+xTgoIJvOzNGwRkBZuz6/tpDw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018242890685-a835ade5-54b2-4fee-bf01-bb52f5378b51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4da5f38dcc6b74b9f899022961cbf1c9fbc047e0d1155ed21b5bf33ea9ee26d8
Date: Thu, 28 Jul 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658973652
