Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D2D257B
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 08:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657094812;
	h=To:Subject:From:Message-Id:Date;
	bh=QMHTag3zt4XE8zt5EGFjVzl9b3UfE4cm1V6wWKboV3s=;
	b=QlKwFsm6IWp8zyMl0PVph3kdi8hNAzgrXsqQYW1gZtS1eTynWTD1HQV0fwTR7aX9
	pyE1VGoTlrLiCWYvEf+JjsdNe0NjGSRESSgKpdvOV1mI0Dr3utnFkwfrcldljDwwumH
	W15XUZl5baGOAPJRNThI32OI+u18//zZMEsCvSkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657094812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QMHTag3zt4XE8zt5EGFjVzl9b3UfE4cm1V6wWKboV3s=;
	b=EmQoRQXm3zZu/XmTJBIWS6epri0YubtJBJ8lWWG4nupDnNY3bXCid6sWbhmtglaD
	iG19ejwi4zWhEnoCLOktazcQ1y3wx/8jr2pLnaufaulYKVhS/MPLFC/ng0icDrA4Zy2
	upmaEkm1SK+xdLp24OSgOkd/nxxPVfotz7UwckZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d28c3268-67f2fb7c-373c-43c1-a8e0-3a99e2931741-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 239c1b141cd369dca7185f3abfa045a795fc81ae87e1dca2c4bb2fb668d5e218
Date: Wed, 6 Jul 2022 08:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657094812
