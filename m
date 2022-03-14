Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CFFF7469
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647300984;
	h=To:Subject:From:Message-Id:Date;
	bh=lVX6ZV9wGleHW/1al9kAjPDOgMMQKeyGf/gTvow59DM=;
	b=l3moVvL5ojX0sqwBLdTS/MVd+87z/2kzrVTWs63qXA5oAcQ9Ou+XKVRoqqXPDpLi
	ZLJkVYF/Pxd4jUZBU/p2jg0NZ/oV4+YSV64mxCi9Ijj0/o7SAHT0x6m1gTe7N/8en/E
	yOwr1QRzcB5hZGDPZf1nCHrrIZV2xiA051HuUTxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647300984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lVX6ZV9wGleHW/1al9kAjPDOgMMQKeyGf/gTvow59DM=;
	b=E6Ud9Q6JaruKLafwg3rNunvitRjoI702Nxf20VlUG+ESC0Eojz0m298gIv53xE5Q
	BkCJrfctf4/R7oIbkra7jPwNP1J1oI1E02KwfNNuYouQSBGYQ0z4Rjm8nu7BaiWFl5s
	7ykZC5KLSdkj1FsmMl2uGOViy+GGj8oS46ZB6Az8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8aca3fae-115f4c8c-226d-40b6-ac9d-3ce979cf3428-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec8fd993c2008de6e03ae400399826c1459fa0425352bcfef5b71ef92beb1a19
Date: Mon, 14 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647300984
