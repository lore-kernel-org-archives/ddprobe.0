Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6715A7C
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646738484;
	h=To:Subject:From:Message-Id:Date;
	bh=nvnUsmY2QUxFUDlRGOYwa+7RmEACK7Ibbg8tHWxka3I=;
	b=Sc8+54WpxSnfEyzEa6kKek7OHrNhgFFsGkvWUHjS+GaRHYau8ijqJo/a8lRcF+6b
	Dp1zgH/xvhINvSfRu1dTB6tziUflVOf2PAhjzmf+zrr9r0ImzbN3pDxVfdPIO24FpTH
	GB8OUmNM10yFjnI3GQGiqV3/3506jVtG+KsKdeLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646738484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvnUsmY2QUxFUDlRGOYwa+7RmEACK7Ibbg8tHWxka3I=;
	b=Ol1r64PY03xyj+1xBMYQ6ooPBUti3A3i/taNyhsctTFJTrFK6heImVriCENU4OFa
	k4dUpPrhxyh+YUJg7jIgTK2SaTVNlKKeomcAoAzd2YEHhUyW8IbIsjJYeY9Z0ReSJLS
	ul+a1+I269u5fr/Jd2p4M873qquCYq9Xt57aL2M8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f69432ded-88a356d7-9e29-47be-878c-f80e087c0c38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f18c9744a4af20934ded986a09ba537f525ae74a306008b3eb846fa16485852
Date: Tue, 8 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646738484
