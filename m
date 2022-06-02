Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB657F5
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 10:09:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654164539;
	h=To:Subject:From:Message-Id:Date;
	bh=4IQZrTuc0rzkg23chIJy8xQmunwzChvyRQssIgf8F1g=;
	b=NhN5xsqiQ6rzYR7MJcUUxe9tS3Ss/5VkfxEDmTmEK5hB0yznkac+Gwqz6V0voyo5
	2+1uX5qRd9b8uKol64OsJeGS8JkFmK/Yatg0jWnOZpQVv7MbPu8uH7wYs83MjUSaSPe
	I/r2AQNijJS75DqVfE6RUoFptC0Ef55goD0z9hCw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654164539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4IQZrTuc0rzkg23chIJy8xQmunwzChvyRQssIgf8F1g=;
	b=hiDIvyd+bIuspDFcBb2+7GyqI878RYXB7EMzf0zIBzNTncPwhP5JrINnqmgBHGvC
	j6JqyvF1hJEr2WHG9cpRN01MZgzdqTwEMOz6j8Z0xsFiFMmOgmQ4MEbANBx4Zmvz7qC
	Sjhe2+CenuXC3XkhkKpGAlcw6fsSPpTxN98AwET4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018123e3c777-99152828-6516-4df7-8362-6bc14f6a1cfd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a03acbb08c99cb3472ab75057bb2c54bc804e597080139678fadca848c537bba
Date: Thu, 2 Jun 2022 10:08:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654164539
