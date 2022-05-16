Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45146EA9
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 09:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652693279;
	h=To:Subject:From:Message-Id:Date;
	bh=yrzszOdER75N2IhnltespUdoxK0MGYUcayjDESHjcFg=;
	b=LI0wgV9KHuXtDkCpHwbfHhkDKuJ90JI6HxMxLPIF7GwJXtvBsBO7I1P3NXtWRw7p
	sViv4GM5UcLkPiioT7gkoP7OHwREN47KNTx7PFp1Pdsb6ZNe1HDIzbIgfk/l9i/w0PV
	cfx6x44mrONTK3jShIKw4Qxdmnt1ajwYsM8We0Hk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652693279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yrzszOdER75N2IhnltespUdoxK0MGYUcayjDESHjcFg=;
	b=Jkw3ecRj+laI3FGvj4IyHJ316+QDCkHKEE4Nzchxwy6L8ysqGNwZkaQKju2xuqgz
	sA5o1g/We1a3RMtXB72L9fOdICgguHTqKejOmt5x+DG7zXKx2u6fskT+h4EX/tvnsMp
	6rU61iBzVlvNvOIaFVuaGC9yLCv3VqSPasvmSny0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc322250-104440b7-0891-4bef-9a73-cb9414164860-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e40502c21e1e500a4bffbbe3ea1d6f15bcfa7d52002acc6c163879bb408570bf
Date: Mon, 16 May 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652693279
