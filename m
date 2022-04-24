Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B1EF7C
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 12:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650801778;
	h=To:Subject:From:Message-Id:Date;
	bh=iDUMxcJ0GjafHwxfGQVetkbOeAdw9UGbQh+Xx+JQbMI=;
	b=GCanUCqu4UzWlBXqtIFAUWlvtqG5NyjtTZhA3Js3OFvnerKAC9aIPq//I8bLams6
	j6d5Tl9JBDQZmq/t3hBHGs9ND5dbUsJK2IWs0Ud70P7o4lHEsz/otByfMGEn3IdktUw
	3HXAa78kwqk4eFuZbRu1uuy0Zpkz9iSIkZxl+5Yc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650801778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iDUMxcJ0GjafHwxfGQVetkbOeAdw9UGbQh+Xx+JQbMI=;
	b=f8VOEuyok/nc2T3GEcn8mKTnajBv86rwA9OfPCLDcxmOk0ZmcMfs53WCr0MYmp7n
	bCw0E8ZT8uu+mqis6dvYSAsijv3Xy2zvw1jtq4qeD0/y+hTf0RQX4AxFUvxCaKvuOez
	2Mk5y56RPU1MIVOBPLTrYhI2hJ36y+oJni/etuRo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805b741ebe-dadacf9b-5431-4b48-86ee-7277550d0016-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12286f6f30c426741997a8da9e04a68ce49085ef4568d1903a8517612f6e563a
Date: Sun, 24 Apr 2022 12:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650801778
