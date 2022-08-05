Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45ED281D
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 12:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659703852;
	h=To:Subject:From:Message-Id:Date;
	bh=cNfHQ8d6jf7gK/uJz6g21SX5Oj+KE2/Vmjmyj0KUMeY=;
	b=Oc4CfKa1jCUAK/3VZNPfuvpaucfJTa6GMHXxUg3Wu3bip+Pe9EODQWqTYt8Havyq
	0kvZjuxUgIAapHHvfGG5sYMop32bv0AsIPBJPfuB3ltBJbZuxnOMr6taHxwIEPy0BIr
	VNpUj+xYjJqapqUXpN+cJiatrNmzYaopkdRmAkjw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659703852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cNfHQ8d6jf7gK/uJz6g21SX5Oj+KE2/Vmjmyj0KUMeY=;
	b=U9W04Mwb2YD4wa307A7Fny1hDuAC66jXuXSqLzEo/R9qZEMkG5xiWSwwzULDn1Nn
	usGtiXHM91op5j5WrkQ11BLuC+9PInOxZ21J4UErQs9I9ukjRmorz9tfMsjb1fe5X41
	0Sp0879gU/ptLYKjQJIjdA2Wi4n1Li5Ag5KuutO8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826e0efdf3-a4f21bb3-0c00-46b8-bf6f-c4d51168692c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5bc90d0966d208615e1119386f584eb88f2da195d66f033a0d15d1bd81ef9b91
Date: Fri, 5 Aug 2022 12:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659703852
