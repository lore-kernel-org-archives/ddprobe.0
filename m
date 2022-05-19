Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1513329A2
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 19:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652989679;
	h=To:Subject:From:Message-Id:Date;
	bh=6Qh1p3J5jVnDpCfwqnc0oy/iLk+3rtGvPkWmDgxy7Bw=;
	b=SS5yArcYhaUw7fRxSm1XGUnsLcj0CTzje3+Vox5cDqmeaMbcJZDq0Ex9Fjz/on0h
	rW13MV81kyZZNuIQcPF996yOO8gwYMYWX1EA8WOIBhByn3eay5d3q9UuwQDFcT3T73H
	rEzCbiBXPYnwLZ9oQNqXQMy20Op4Q1CXrkGTUBWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652989679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Qh1p3J5jVnDpCfwqnc0oy/iLk+3rtGvPkWmDgxy7Bw=;
	b=SYAHqYB9Jyd+jQwax2STGeB79kxImz10FVuO6J7Eyr8EekZ6FIxf9yTMKeeZJEi6
	3LJ+pOHMLgPXnj7D7L+3pDqhD9nD9uwz6E7WgdIvuvJdTwr/OdObqVn1UQAaVtkIXE9
	Wm0XyvJJdEi4Wb5REPZsiDxWFjW8kozGkvbKCjds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dddcd6ee-20f9a0fe-788c-4149-907c-f0de459bce19-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 26906da7f751485809aa52f2d9b1044c43a093ba144a105d4465051039bbc7bc
Date: Thu, 19 May 2022 19:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652989679
