Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499F43D88
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660824052;
	h=To:Subject:From:Message-Id:Date;
	bh=R4cpdvw36bZihUvI50B3mAIrOlp/4VSFGks0s5R8iuw=;
	b=V/ncsaHbv1Ar8faZZT3SefcMB+2jR95U7ep1NTg7XZ5BXADiMLKHELwkc0TJrXKe
	kNBvKUG5wxEssJ9dgGJasWhRmEncYDibgxR/qETa/bViDEnyZg2ma4/JJYqUT7TpFdm
	7i5Wg+5QpYg77eorzxxGJjBFPe725IFF+fg2BTTk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660824052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4cpdvw36bZihUvI50B3mAIrOlp/4VSFGks0s5R8iuw=;
	b=dBA5xhyQUHuelsTCIvo8oPq3EBHrDeQAm2DUxSsHPGNkVb1OMII0ROkHtGrICVn4
	u+oQ1KeCSXBr/pEW5Bi0JAQeqBJJ72acV+FWvndW8AhEbyCPe66oSPKajrV5QIgwEbv
	JYz0YINm3pmGUuVdT/TSv7pW7pStV+AY0ZDttqv8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0d3e362-117e2a3a-d88a-42ed-aefd-f8d792380565-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d66c93ad96d4de14467b240a126ec69af6843493247f577fc36d352cdac3160
Date: Thu, 18 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660824052
