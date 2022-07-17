Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4107A
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658017012;
	h=To:Subject:From:Message-Id:Date;
	bh=H09J7quyU+u79TqDbH02OECQrQRgNi7TU4KO27nHDVA=;
	b=AJlxLvXuCF0pRcrlEa9zRg8adziYtd2exuIb94v3uwmW6SQngxUdFzxyhQosjpk3
	HTD3WdRdSxn5Fs9mof9UpUkINrXnTW2ywqNWcOA+WEN9A7xYhwUJEJ1V6YIQLXUQ3fE
	LnexHWHt0Ac8gFDJMxH7W8yZ899Noh64lEXZHU7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658017012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=H09J7quyU+u79TqDbH02OECQrQRgNi7TU4KO27nHDVA=;
	b=N0Mi5Gf20vnGx0DApuo0iT20ueaD5yYt9Tf/cBpp0mafL8yz8cxykQUvOU4RvGp1
	iKHD7c+r8jO0l7j1klkrxSQ2Vs7ngeKVC3Mq54I6syN6CHttZStZzOWPWXCuBMJblDa
	N/yEXz37vOXVIGiN1fkmalNUujK30f64DdTp2yMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820983da67-5a77613a-624d-4309-9172-c543feca43e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6afa9a5d97a7144b7e5a46a7ed1a676a22a749fcd38099981e18e7c3c623f4b6
Date: Sun, 17 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658017012
