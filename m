Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA1823AC
	for <ddprobe@lists.linux.dev>; Tue, 12 Apr 2022 23:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649806318;
	h=To:Subject:From:Message-Id:Date;
	bh=Ch1domdZSAsWgM8Qrs0qw1f5fGG1RH25kuOh59Au7Sk=;
	b=SkMGPyo7BYd0SK+ZbvGxdBAc1+SVSSFodZtatRJIFgHsTOLYUDB1BDnudC9jdB1X
	TU61EFHcD0C3XvdFfcqBDizNiiqPC4oP7mpnDcPvdG7QNlEVaqaEQuMYi0pBA47noO5
	qViZCH8tEfSWRveSQ9PtfPI9g8Ce8F6lCJzwd8vU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649806318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ch1domdZSAsWgM8Qrs0qw1f5fGG1RH25kuOh59Au7Sk=;
	b=YuqlRuscMMsuuFGpIpDln2l4N6Qx3h7D6Z5ADYIXd0spuWSAgY/c8nMAOZesXx6T
	3wAudeFz/+s3lojOPxQ6xUDCU6Oq0SaSKZ7nkmlyX4bvHpt59DjwEj6BaWNKjrAFonX
	eOtiWxE8CWh9K0rY2wJbiXljjNPeltD4zPC7lifs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180201e9b5e-10d5d9a4-1ebd-4859-b99d-b10679f783de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c47a16393b72586c73d1e13d5bd81172bf275cb6c21ace402f1d11f2d5beb2d5
Date: Tue, 12 Apr 2022 23:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649806318
