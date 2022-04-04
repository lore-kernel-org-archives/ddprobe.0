Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA003200
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 20:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649102758;
	h=To:Subject:From:Message-Id:Date;
	bh=PiYX/9vpRrmnf/COpDbQ5eIGmr9EI+d+X5s/Q8VmYTs=;
	b=TR6vEmnf3EUjArkGQ3rxONrfsthSsvQQQCOXiBWacHSeRIz0/EIsT9GtUs7kXNhr
	NzFVmP7lrpHaHrv3GzftOoyrPTbeGbhF92EUN9TgKyhxXN8/Mbhfg2+LET12oxvj9Zy
	k6bwZQcm2K6pp+exAyhldg66yy9f8bOG4l4dWgrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649102758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PiYX/9vpRrmnf/COpDbQ5eIGmr9EI+d+X5s/Q8VmYTs=;
	b=Kahvco42OPZfRfv9Y6Ep6DXtoneev5ZbEL+PLVvQTztzw+wJQ6VLbvD/erH8EUYi
	apgVFr1wmY/hm6K4OcnTm+D2BOrw2/MSb0I5RXe9slPtq+o9ZdhyrPBxPWE5Bc0rDyu
	GPlcPhQIxorH/1N+VGQqT8/z1TGc1V3VzjvSHEDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff62f219b-b040459b-5daf-4999-b5bd-48b958144f04-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cf7d8bc347025b16cc292a0b96a639f8544d859fbed0f0177d050fc7d77c4e5a
Date: Mon, 4 Apr 2022 20:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649102758
