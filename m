Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565301FA0
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660725652;
	h=To:Subject:From:Message-Id:Date;
	bh=UrYT9qf+WQJra2agsLEs8LDzUMdw4+KSiyUbrxasFWY=;
	b=MQnPd+Je4n2UA4YqRRXcktkf90l2kqKawMBelzGrTCx53dyDXn4+BSU1EJPtHH5T
	Y5y8GuXG4+guyvQCqeQFnXqAMge5pIUwqufCfZdXVYsw3bnCuPz+tGEjnKOBR0vzPTW
	DXXCgsWFNPLrbXu1mQY2kCKERGrSsYkece5ptj9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660725652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UrYT9qf+WQJra2agsLEs8LDzUMdw4+KSiyUbrxasFWY=;
	b=Jina2MEz1nFwnZc9Sb3EhP3hbUUoPnZbBkVvTGvLpgsHy10nBYZ2bvW7l+w80O6a
	p511x+JPvy0Iss1SNsLaH5/37BbUKs7h3poWmz87lJ4bCfT4dNqhE44z8CAAKPxULos
	pil30C1OV9SA1X2fzmIzt9di7rJWVSYork1Dq2gc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182aaf66c83-1895e46c-ab0f-4c51-a453-7e3b2783fa5e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9d039ae8c587ce72ee7ab06b1d0a0206bb0e69bb4cf19ccca601778df1e57bf
Date: Wed, 17 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660725652
