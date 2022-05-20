Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17A5F15AA
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 04:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653019799;
	h=To:Subject:From:Message-Id:Date;
	bh=9Yllq4SFMRdBA/ceycObJ4gcek06ZuZ9btnFLFJ1IFo=;
	b=GeKfLRRdhYq/mgEhiOGaBEKIx1fd69h2nuMCTzq5R0YvF6zIohjxOQwZwOMS09xK
	FVOkf77btnhFNqqVjTT2Nrp66THG1zgDHfo0gOpqzqc8pwoAEcx7hMOKwcKziLi6POk
	SlJ/jsLI7/7MkWcVEjUq0D5KWcEmimRYw5gbb2GU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653019799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9Yllq4SFMRdBA/ceycObJ4gcek06ZuZ9btnFLFJ1IFo=;
	b=BfhBG7kK7L3BQhStiiGlhMWr3tQ36OeDOTMM5+q0maIRzV537Akz4VKxaoP122lv
	PBQH3P1lEcMczNbXs6I7RfA5k54qFnWtvct+AvuNoCJdRzNYwrNTKCVQsWM5e/trocQ
	gNqtMvyZ/uRt0O2HgBe8cEA2ZJEw2K2T2qsqUWBI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dfa86f06-83b1eb3d-157e-45c3-8b6c-11220e35707c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d365d7ea076f33b0b18c6be261629a64068655b7a79de5221037779f934355c2
Date: Fri, 20 May 2022 04:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653019799
