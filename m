Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA623D6D
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 22:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650667678;
	h=To:Subject:From:Message-Id:Date;
	bh=rWl8e/C78ARgZf71D8T/IiHpGirGLoXMUdqYtqW2vHo=;
	b=fPkmBeCdYYtNXVsaHUv5AOF0H201bc+lS3UnTJVt8awXf5ZR7R7fXu2Bpx7Hdxfn
	zin/20y409JdrlMvJE00uSAheJP42w572CldnHXAQ3LQ66nID4qDtjfIjt6Q/tR5GzR
	J641JIU/sRCGYET7cTK8BEOauvW6Vmf1vlXfKEI0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650667678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rWl8e/C78ARgZf71D8T/IiHpGirGLoXMUdqYtqW2vHo=;
	b=NTXl5awFGM83WnB0b4NDfXgJ++IUAwLJXVcTdG/RrB/MPBYkAvY5nlDTCgBEGOKC
	DGY9nuYReXPQwTOnM9vSCgHGJTkWzxgmYO9zDD4StBJb1b0wcDzdtSUgXn63fqfZPig
	Pp2Ufr1LaexDK0UIZe76MYTVIjZ+vTa8i/43/6TI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805375ea8e-215cd3cb-c4b8-422f-a761-1ac12a555f5a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fb9a27af8737b52cdcb1ea4a8722d3d4cdee5df6f9b70eaf0e1171c5a1eb3fb
Date: Fri, 22 Apr 2022 22:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650667678
