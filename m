Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A9F27E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 16:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653062819;
	h=To:Subject:From:Message-Id:Date;
	bh=eGbqHOo6n83bDcdrzpIZ50A66iC1QTIjYvyTKD184ew=;
	b=RTUxNUJJd4rUCQamPA2QowfCop4U4fpnNXI8I/0fJyE/Ob1RiexavMR0CKfNvNFw
	75w7M4/ABeE1GNWSzFYIVGez/+sNTJthOczlx0WZxc+4P8lQIeukhs9HAp2iXbgxb8d
	wLYJkSW/689FA63ePF9GmwxPAwjtoOVeCnGyJJOA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653062819;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eGbqHOo6n83bDcdrzpIZ50A66iC1QTIjYvyTKD184ew=;
	b=TrkUn1m/BmVNGmSV9iJHk2WsMAXtfkOxkWkD4Hd3zyy7yaIu94CFe9GtEXUA7rVq
	UBNyEVGNWttZSJ4tNZ/L+iDlBtcwFoSLM8+OT7xqFaJ1LRIF9ab9rfzqSLdhf2GqhKB
	KW5V+zM+0O+R0xFVB65Rmn6lAhgM8NtgXoZQgwII=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e238ddce-ffcbceb0-56b9-4029-8cc9-07bd580e4daa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66e0fc99bf8a39b55a5cc3e0a7e9bdbc68e62181d7a3d5ce712e43888ffccebe
Date: Fri, 20 May 2022 16:06:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653062819
