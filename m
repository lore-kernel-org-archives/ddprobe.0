Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599BD15A3
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660016452;
	h=To:Subject:From:Message-Id:Date;
	bh=LPkI40wKRNRbivJ45NLOrmBZzMuUdPqmoOa0C9SQYrg=;
	b=AjetC6aGtQmIakxj+doscYbSnwngUXhp4C3uKelB87oK5SrXliLhTihDKqqBuKXs
	i090VBBBT+r6kFWQI8CxNAD+O2u+FBOqLU6GITyn0ji2eRRS9PhenI1Ph/6xUFwjJJi
	dVY8hoLrhTKdOC377w/u/5AENQKcu26Lv+6vMCqk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660016452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LPkI40wKRNRbivJ45NLOrmBZzMuUdPqmoOa0C9SQYrg=;
	b=OxobAZWSVT4JIv6us5C2fy6GMpPnf+qWzI0fhhXnIIB3rO2pmXbL/8qQSqYyE5n8
	JyxsYXOz9cjO1/TbWmtEqiiGeUQVgWqdRIK0PvCEw5AhjbrWFMUHkvw31OyGyjL3Ch+
	iHl2XVtIX4Ow/diB/8pHp4ZIYwtf9BYBP0h0aKcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018280b0e420-b213bfad-ece9-4df3-8150-6b8fea40097a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 60de11d0e7bf488eab36cb9f550fd48063e004a4637c77854708c43674dfb55e
Date: Tue, 9 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660016452
