Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E312F2F21
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 23:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655250479;
	h=To:Subject:From:Message-Id:Date;
	bh=tWyvb3bB5H5RkveE2mD3Q6az2U0dfY3dvIgbueJC+J0=;
	b=WJ7oewFrdMrauFbzoDx/x5jIcwDYBdqap0weeqghO55Tqy5lORhigwyDEG5kPqG1
	i7ArQFHVfmHvKIUbPG/fkk2ppWMFNVKK6DFrVH5b3eTHGjtwWEyftinVmfkOkBz+tXJ
	/exxMU4yo1XsSU9l7hYdwggDP9qjPWiJo5+/5QyE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655250479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tWyvb3bB5H5RkveE2mD3Q6az2U0dfY3dvIgbueJC+J0=;
	b=WIuwXDlT8HBd5pyuU5NZKPWW8RC4UiAphYZEzG0lCGEH5MMaH3Ab0W1gE9R3M8Ja
	DNDpWw2oNvr5XbL4YIoXLuOjyrz9HBw5YjNimKMaE9CUqW6J/f/28wWuvHyG8LyFIAM
	TbQVcUMXkxE3fhPDBsLiYVrs8HbAbAiw8c2FSqJI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181649de875-0ed5bed2-04bf-4e0f-85fa-63a439588828-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a216df1b6e2d8d340e0663203c307aa5c1c426a4a9bff9da508240f27afd143b
Date: Tue, 14 Jun 2022 23:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655250479
