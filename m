Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0448228E6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jun 2022 15:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654531020;
	h=To:Subject:From:Message-Id:Date;
	bh=6KApZyxqw47Rw133wA8FRqYsRaxtVXmIR7FmtdMXDgk=;
	b=QMW6bU08X3o4fAJM+mcNCKwa80JhRHJgQBi9nIznuhU/NgixNjFaaqoBY95XR6QX
	9unp1LGiEzvvOo2CSmhPwKAKiXrXlRzERYSnjh7Nw13nkQHk8aPrCpMdjV+BUTXNRl4
	QMV0YiQn/24FaVmDupNDEdMqLAF4g7V0YK/uUbkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654531020;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6KApZyxqw47Rw133wA8FRqYsRaxtVXmIR7FmtdMXDgk=;
	b=kSbv8Dc5jRk947bHLFCbojYazjphGm2CSDEN8a08AQaqaKdXlo5VGQIlfItnXVIn
	NVaxHzQf97kyD92GLfT6RDhRiNKk4cmdXhPF9NKJp8rdcWwZts5DEDzq1BDQGxDBqDE
	2u0Levbj3cSqPhMYCht+DAeuhNOxpWNivMiOjeow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018139bbd21d-c6844bf2-8707-4de4-9d2d-226429006b56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef5a54c72a5b2452582f53656fa5f39fd016f23f5ab0cc6ad18d56947903390c
Date: Mon, 6 Jun 2022 15:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654531019
