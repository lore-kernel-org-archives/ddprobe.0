Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C447B469B
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657570613;
	h=To:Subject:From:Message-Id:Date;
	bh=EhqBsxjt6cl64ikMQviOrHkd3fL7uzYO8XX0VFlC++A=;
	b=SAvfqR79Og7TWaUeMDIGhWPO5bma0qTrov6fFF+qxY+T2aAa/xG2yzz3dFmGiFDq
	jLO2qZMWd6NRcXFIRVnBq+HDVtYikGJxIQtj7jHI7rT8C9B/REbdfVGHENyzpD9GZvs
	MKmDTmYfrQy2n3kB/k+0ci6YGYUNbre9J6nK2RwA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657570613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhqBsxjt6cl64ikMQviOrHkd3fL7uzYO8XX0VFlC++A=;
	b=agKZQEdxebsiC6WEggYvUYCW0NLZPhTqoqUhNeZaCCpAqgoAuP/jUbpYeShSgpbl
	VDycxyicaqT+3eAK15dgxyYbr34FXuz9YePwseJUEZ/ahp1+yb9HjfypH9qPm/f3SjR
	nQXXOiYz/mt/3PW+prqEZXqTnEeMpCcLCSRHSqL4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eee854bb-3485c064-a8e4-4c50-89e0-f066f9adb9c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0ca26fb87f71ae90b01b66b32f530678451d4df43d8cc93defc158626bfa257b
Date: Mon, 11 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657570612
