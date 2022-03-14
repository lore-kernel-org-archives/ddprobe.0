Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574F21855
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647257184;
	h=To:Subject:From:Message-Id:Date;
	bh=LOVX0TwIdguPbdPCTIf3QGdLPX8bmXWjc6gKvo4ExBI=;
	b=BbqsgpG2VT6bjwd4Ivn0UZ6MlkDjJG/F+KuAkcPxbkw8Hy3BxrgqhLtjlqZaDumO
	YKlKwP30sLdgqXnWUcDi5zg8RpgCLzRQf0rOq0VaX8JOOE0hjYl1AyGUZDlfZJGjoai
	EZrGCLHcJkAsIkUK39Jr5EK070uUnbNqN11ud//w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647257184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LOVX0TwIdguPbdPCTIf3QGdLPX8bmXWjc6gKvo4ExBI=;
	b=NPNtzSh0Ghi9Sn5Pejr9wiyrgj8S9egoH0Pmy6/fEcXrz2MGWRvDss6z30oP/JHf
	G/zg0dcHzETT6pA/doXt8uEpiKmM+YA+tUvWG7xxsOdr+StzvTGxxAhd1qE3Yk+5cjj
	ntEzavqJK2Bcdl9qZfVK+OIPtNN4nKMKXHXexUzI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f882de9d4-c28b1078-8b8a-4181-a9c9-3ee02e112d6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05fbd33fe1e2091b757e6bc07f90d4659228d05f1a2516a79a50222d767b8d5b
Date: Mon, 14 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647257184
