Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1D17D1
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 04:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650775498;
	h=To:Subject:From:Message-Id:Date;
	bh=V29udIoLcLap1vehHkV6Ij1CUB2vFznTnSD/Si3lM18=;
	b=cqMr8G9Go3JfN3E0Rn6G7N0AAzcnjTDp7vms81FZVw67RH+qvVs/diiIv/p6qb3p
	T+rdwi18L+kCgGVqXbpAsuXwlZXBHo5t7M0Af61A7797z1G/2RTjyWM7Z1EI464VvJS
	6hxZ3wMeeCeT8UykvMaXMOKhau8kc+yOZJqLJlmw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650775498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V29udIoLcLap1vehHkV6Ij1CUB2vFznTnSD/Si3lM18=;
	b=jmzfRXhLbMaVmeZDIrzMEkAJN1miF3dUQmx62dIKyQeCqfkmZIlzdxc903UZllbr
	N8CY1qw+l+LHT+/AgLxpB0QjbqPOM9BI8ExWeKc0o8LrT33nF+wMSgvMnZogmcp2vsD
	c9cjfer8MIHLiJiNCMU4ksPW8VrmuYPTVXLLIoJk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018059e31e1a-0c8fb303-55cc-46bd-a6c6-6e4e14c3f103-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0c1b928401051e68ac8d48e021ddd351e051a882f8b9e6314382e6634ec7490d
Date: Sun, 24 Apr 2022 04:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650775498
