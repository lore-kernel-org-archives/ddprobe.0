Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1F207A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657275412;
	h=To:Subject:From:Message-Id:Date;
	bh=AH2qZy7A1Sw5AfxoBks6Fi1okobSTv4Y6n7kk9Lbox0=;
	b=B3LeuaTn9rOY8PxWxhMyduIfqPCKYTuu3sNVVF4u2xu1wjLlgvyXQDLOwathnpW5
	+7jtiiO9xzAYdy/VMjlTeNiBcs305fz/SiqbuFBMx2Soq7iERQxiucR++Iex7h0wiBR
	uVEOpEHvS1yKAlFayolKyT544hwCb7VyBIIRPccE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657275412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AH2qZy7A1Sw5AfxoBks6Fi1okobSTv4Y6n7kk9Lbox0=;
	b=kSf8bQmiOeu70aO3Xwqc8/9HzmvqfOg4XrhzEfYeR4hn9sqerKXVz+2I4nZYWoiF
	9K/DmMVOFKhQK9vipsBmeHZltU89lWRcJXe+BOIgThA1xL6VsTR7NBUK/JLaBa9qoln
	XX+aUDgCM1YLk/+9QaN8ZxsbvskCAFoy7GTsf+u4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd4fef2a-39b4cc7c-28da-426f-9e60-c6de2ab6d63c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b16d7f9e83d87ea1c0a1911d5002049c767a29bc36774e0923804fc229c38382
Date: Fri, 8 Jul 2022 10:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657275412
