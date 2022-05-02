Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3C652F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 17:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651512299;
	h=To:Subject:From:Message-Id:Date;
	bh=SHIs3Ly4Q8ScYJN1eCz11MdoN21Itin/D5vaaZOtpc8=;
	b=XC+KlB5lfpASxCE+g/q70XPGuTsZfszDN7AsrYosqSo4F2SvR6w15Z/fAUjTp5JZ
	I7+xKAgaiH50Rweh9D/kCZfX+rWx33bUNGO09dY37zw1uTH/U+OOmgDV74cCMFBSJGW
	yq3IN1MIIw0AuGiyopMcSdKzj9S/EDZG0Vldp3Uo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651512299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHIs3Ly4Q8ScYJN1eCz11MdoN21Itin/D5vaaZOtpc8=;
	b=kE5FXfvQkkDM+3+4PDxXsI45RpMMdbPUADOEpzHf42Vd/nYjiMTPR3dx+AyfpdQR
	VrX9dTVToA3Gd8E7wjJfXKpKugbFT6aPKKqJa5tc/nKWiKZl3sHVYSw0l3luE6ArfwQ
	+cdaf17s61h+xIBp0pe7z0ivA8SZlKLISPBTEeos=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018085cdcb33-2a0f9be1-db92-430e-b8c8-24208afe33ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a6ed49d7e5bcf2232197427c3a7e29fc0523f741395c711709c8394b75d719d
Date: Mon, 2 May 2022 17:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651512298
