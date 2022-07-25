Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15286367
	for <ddprobe@lists.linux.dev>; Mon, 25 Jul 2022 02:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658716612;
	h=To:Subject:From:Message-Id:Date;
	bh=KWywsmhhtUTa77Gn7V1e6xn7f7WsDB8SEoRmk7QHzf4=;
	b=aGK3wCtAixolXdGghvcgIwMFxW+qR36OvWGif3wxcEGVjHiyTk741OfZSS8oeceB
	hM7QyDjHFpcnP3JB6Udu2WSMGK/rhju1RglUDw9ZoKUWi4UllQGrfsWyjotue62b+Fp
	Vw4NebqH0oc97bLrrS0O4riNOX/Y/AWIUDyVedTs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658716612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KWywsmhhtUTa77Gn7V1e6xn7f7WsDB8SEoRmk7QHzf4=;
	b=fkshhoZ8jTkMBODEJT3X6fzWk2zd5wOzfF3/Rx2dyR1v8x0iNeh8b8xHsL5io0rY
	7wUEI9hJieOreE/T/eO44mvqWIp3xaRzF/SqHBlK67rXmdv+NHJrTpDSghtZ/FsB/cj
	S9kQ2x8GkUbJ/XEAqXZDTWDtmmzhpSNviEC409tM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101823336e6e4-acab14b9-fdb1-4e90-971d-7544c06756bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 616c68ea48ad229edcabb3724cadc58709ad12f79a9e0bbee1ce78069b16246a
Date: Mon, 25 Jul 2022 02:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658716612
