Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 323287E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 04:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648269658;
	h=To:Subject:From:Message-Id:Date;
	bh=QyD1A+E1VOme9a0G9y1KE6Kc4aCRyALHeM/WKnFA2YI=;
	b=K1mINhONDdxLckngKXXjTLboSaRridrO8uuEvlzziQIFwrweY3LbW5UV+UmCDMLe
	fu3PBskH35xqfImQrHAz8KqfEZVChEOdubOJpSFfxsNyxHmiwlJ3JqeKut9Dke1eait
	XRqVvBmXJt+sK4M5PMJ7qy21mK5GMv4tcdWK0mYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648269658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QyD1A+E1VOme9a0G9y1KE6Kc4aCRyALHeM/WKnFA2YI=;
	b=Sztnia69yMhC32WrEXRWqyxz+VlD98U4+/NYQP/0b+zyxhc/SRmupxv/UaGvW8K9
	P8VeXJXE51mrbg9b5YfldY+fkZxKvYv96kr9DcggJqCenLE9TpwWK3+E1UPojgRgHqi
	q39te6XZpt/sxJy1HMl1rqiuqalxit96EXD1Lp2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc48708bf-045eee6b-fe6a-4769-8c38-8431e0a2e655-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 341cac4b8cefe80fe6e18950aa515385ce3d7f40d6ac59c1a46b4d94f61940a1
Date: Sat, 26 Mar 2022 04:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648269658
