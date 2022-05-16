Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DE451376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 19:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652729039;
	h=To:Subject:From:Message-Id:Date;
	bh=jE+v4sP/1AODK7CbD0C0Hx2mmCFhb2cTcskA8RieoTQ=;
	b=GjKp3uU+BSfXv1vCxqxpvXqsQc0l1hwyAxOjxL6QR0E+7UENuySK7c13O3JYkBlb
	KI9UyqGCTtRgEnYjR6/jRnSgAaKALMmo01eVuMdgc1zqOSYlF9aGcLf5SYbjIRIoDIB
	2f9ZPcxbL02QGnBTEQvWxvNvIaeGRRoJWrA09e+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652729039;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jE+v4sP/1AODK7CbD0C0Hx2mmCFhb2cTcskA8RieoTQ=;
	b=XgefqDleHxCyIXQImrgfdUqfzbhWfdoO879BVL8V7qJyGndmT7XB9jvZy4XmgyiI
	abau8sSFMY48CPfwJ9Y3lNR8wcnSygryrkbulfuB2YS0bBahTZK99Mr1/lYv1ZIKuUc
	7EQU1EEP5y07YQHQCVWKbjqSIwP6YsTpquBXeWOY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce53c9a9-4f58c4fc-7ff7-4cb8-a648-703a3ab0795c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41a0eda79fd5ae95747e9fc6eb5f6b7e431adfda1ce677fa1851813592de3006
Date: Mon, 16 May 2022 19:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652729039
