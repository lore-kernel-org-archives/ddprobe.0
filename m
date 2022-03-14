Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7989F1366
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 05:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647236485;
	h=To:Subject:From:Message-Id:Date;
	bh=rDVmB4qganK8M0jH/qnrMHZdB/5OjFqYV4YkjUBcBcY=;
	b=DESKx6gsEH0qx8KOjDpTtL7uEC79ymLRNFiiGtSjJ9q4UTf3k5rk6OwdqmP8ovfd
	GLgzTMF6cYcRJyz8srgmccXDN2NruvL+C3FP2l/1njSIcU33fUBQ4tcRvWqTrP4yAwA
	t/qfLHqkxI7ckso34PR20+9nmcvI+g7SKcH5AHCM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647236485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rDVmB4qganK8M0jH/qnrMHZdB/5OjFqYV4YkjUBcBcY=;
	b=d5kQKTUvXsvvGpTfW5agOgXGqP/AHRTE2h9g2ofKMvMBzuUAIC2my+BqvkH6FXL6
	uqIEm1d/g/hxfbJbribheEC8wHGeTs/vVJDrdwIpxnr2gqSwSWgrRaX4gbUov5Q9t+7
	0Ug9qtjpY1H+b4kAJdHUDsBCiahpm6WJk4CZ38T0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f86f20e6d-2669c6d7-59fc-48fe-a485-d90ccb17b64a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b64c5bb93789c2db0f29129436b5b5cc6bed8fd09d0782c2398be7d5f5207064
Date: Mon, 14 Mar 2022 05:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647236484
