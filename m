Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209AC7B
	for <ddprobe@lists.linux.dev>; Sat, 18 Jun 2022 15:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655567459;
	h=To:Subject:From:Message-Id:Date;
	bh=fsNZtCpxjDKK/RzI0Eb6wpHuiwun8rKSeYRtL/i4rv8=;
	b=G7jWJHlE88efgMxVztQXvkiu324Rk1hPL1sjtggj2bePFE3hb3r1Fe2/a/BDu1Xn
	cvFBMMhEE7eHP0GHcZWqrCRThRXaBqIqlGi2Y77+YpRTdPqY68+B6vlHCIzEfzzye/W
	C4Q8FTNFeMM64xmhBa6DCYzyGmn/wJPQq1GLx+/0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655567459;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fsNZtCpxjDKK/RzI0Eb6wpHuiwun8rKSeYRtL/i4rv8=;
	b=Uy/WL4r3rmanNIMnqiLcZMpku3RDbv1dRSWnhYZYI07SWnbmEOZu+prpwau7Olif
	2cGzL1xXglRJpPkljWrvSsJ5jkQpE1o2kR1Q5ois0yFe6U8QgOQz9Zui1kMjXaJtJqv
	Nrk/hUKYO7UGKlUz+IrMOaeP80XWt2mEJdMqC/uo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817782a3ba-b11eb9a3-2d38-4a3d-970e-2acb71737712-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ac9cfb906fb71a506a1c18b2e5c4db1b605f13227d952fb06e44f45b6f141e5
Date: Sat, 18 Jun 2022 15:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655567459
