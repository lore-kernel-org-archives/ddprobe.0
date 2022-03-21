Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF5C136A
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 10:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647859585;
	h=To:Subject:From:Message-Id:Date;
	bh=1pYQ5akYqHGJG5c1Ov6VRXT62JwwSvYby4ozYx4oSGk=;
	b=OEUhSdofEKnbchaNFVV/mA+wawG2tJLrR95I+O1Cnwvbc25FLciUAclI0BlYhAxE
	6GM24AGDeAeMM/8UI6g9QN5wlQQOyP5Saa07BFMlD/hjsV40uqCgdueSJTKw0X9QVlY
	g/EqHWgSomKRh7hc+PLQodGWkw0CJOmpPfrUo7G4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647859585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1pYQ5akYqHGJG5c1Ov6VRXT62JwwSvYby4ozYx4oSGk=;
	b=K9/LxM94DJrO+nY4+waof/FcL1ezehbVuIW1NKVeYb+4rduavAnflamWQIWcHf0l
	BcGGShpBBAPkWHY+rt0wwdwjUpT9pxfdHrsRL6vxNT/Q7+aUdjq1eht8wdE7pAtbt5e
	ID0BEZNTv/1ZBAyA00PxFT1SenotHVIYaRLITEDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac15cee0-382b24b1-ac85-4000-bb84-7fcd3b5bd885-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 36d3cf802c26353b7818f3982d25439814cb85c86a49295509d156fb6ec01805
Date: Mon, 21 Mar 2022 10:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647859584
