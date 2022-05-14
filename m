Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C1436A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 23:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652572439;
	h=To:Subject:From:Message-Id:Date;
	bh=jwC4JFjRT5fBB96AYF3xfIxBedjK6/oxR147RWV1XJ0=;
	b=XDttkJ7lQ6GbGUmnAAsd8fwFbvSiGMQFORMXWGA+4ArihqpxVWsV0yYhPkHdbVPQ
	r3S/39lU7+G7lPQ1HhRJJ8weLNJszWJeOlOVtUpaHtrJaf3NXStdbh5n3O2MZdoWoUS
	Zl5wbes6Vm5WMKH29uo6CchsASJi51DMjinXEM5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652572439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jwC4JFjRT5fBB96AYF3xfIxBedjK6/oxR147RWV1XJ0=;
	b=hmfkrw7dsKmLK5gy8FBa9mgByCPZztB1hT1MWvQkY7dxxVg0f+xdSY1kBNEe8Yuw
	Fe1YszOHix1BSOF/vXqT5Sx1V23x5bqE6CeGHm+UZDhw4nMPzlhgGrrg8A8tA4+0WRy
	pc06d6dcPMChvqdKJj5Iwz3iJTSlah9sDTRXrPxk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4fe4336-5b310c34-071f-4ef6-b78b-3a70887c4d68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29533fb4eaccce349a8bc2e3e186cc4df1641773015aadd46b3a393476a7ecab
Date: Sat, 14 May 2022 23:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652572439
