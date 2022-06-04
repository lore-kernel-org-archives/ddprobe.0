Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB19111A
	for <ddprobe@lists.linux.dev>; Sat,  4 Jun 2022 09:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654333559;
	h=To:Subject:From:Message-Id:Date;
	bh=LOqqbetel7BzsS/SVpXFwcVt0ti3353K/RxX7Yt6y/0=;
	b=NWVwNBuQ8hTfbDVsiPFrxQP/oe/rPctA7K2YJtoy8hMFoB4EpapUnTbsztYKdTPf
	kkybwHQ/XJ4NsqJp0qZnl7qBc2jy1GxtE+DZ7bW3gpedTPa5Gr7Kr9M6F6KD/A5DJLD
	PB//pcXpD0YzUjbrAmvlER+LytVS3CZIU1f9ODcY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654333559;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LOqqbetel7BzsS/SVpXFwcVt0ti3353K/RxX7Yt6y/0=;
	b=Ff50HQSq5vmpG1GfG7G7wUfGdARh5/resjEECmPLxnzYpTwmSS6ywNlRqfDQaaCe
	Xk2hWoKaubHXJNJC4xRaGgC6sg9Hh7HPFpA7DuAKueFnt+GOKL7BNbTWYXfcZ5EkBjz
	KFtCPH8uLzQgiIR7YseQBUAC2X7bJ6nrNd4LW71Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812df6d205-e646caa0-42c1-400c-b712-32fd2a3e55cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18235af3997d68183b86ddf140fc7f87e124768d70c906a6993e0bebee6f8a3e
Date: Sat, 4 Jun 2022 09:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654333559
