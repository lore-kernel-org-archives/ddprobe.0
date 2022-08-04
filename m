Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5975A2570
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 13:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659621053;
	h=To:Subject:From:Message-Id:Date;
	bh=ykfqUIeRL2jL6K/6pnvY9xmo+1e4EnW5SQTXOzSDRJY=;
	b=BVvapT8vMdK+uOfO6g0InFLltEzucPtHUn1c+ExjPmYxFMcG0OguRRbRRqJ1Ax2D
	+BUxZWjVPngmIeuuf/FbThi4q80XlNKBeObqgWGbd/reIMLIHSb2JyK8vOjRvGpLlQe
	pbO7B12IzWb193rwTmSCbNJ35vlAVKX5kMPrzir4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659621053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ykfqUIeRL2jL6K/6pnvY9xmo+1e4EnW5SQTXOzSDRJY=;
	b=MNRXIl1WWKw37HFPTUOyLDBWLgiDSARJ+yyXZ6ue40cfqLzcNGDMB6reIGS+E4d9
	6Ugn2rSZNbvNVSU6kEDvlzRamyjG/Sjhp5ebasBaIemeJLn853k1PrC0e2C2iYgV91A
	KIjfUl1PvUEW3q/deCU1J9JL7Km+ZBdUiveFxmgA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182691f908c-cfbba3fd-6a11-4211-a3ef-ece8ac6ee2fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd39eb19ac5370f463ab3a6dd4a3cae6ba47ec19c28ea20f94b0bf393c694c36
Date: Thu, 4 Aug 2022 13:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659621052
