Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 094DE323F
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 19:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655754180;
	h=To:Subject:From:Message-Id:Date;
	bh=0drVnVZQ3e0SS/8+nabutTdCkVsyttS29H0HNQV4ZIs=;
	b=CF87GDLdjHjU5jJUeuye2+E9h/K4qmotzUs5AbaTYdDK9d2jaZdQTnAjIJ7/YRuz
	Z/EvEyZTvMRoZ+GnvixZp4tSWvRPVQajDLyTyAs0ZH0hzpihZASGNhy2jmPolmVdU6K
	vntk8iytdMRWFAJ76NVj38fCs6ZTGHpMxduqaSA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655754180;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0drVnVZQ3e0SS/8+nabutTdCkVsyttS29H0HNQV4ZIs=;
	b=Zh0q5Zq2RQFewtQXBrSq6XwIPWNGDzg1ePfT62lEblifJgSwJmaZXf99q+j3K7A8
	ioCqv1Cjd0kIJQFTexjKXMfG2yjuQ/iTB9tzMGN5w4mOz8jrz4wQ2EJUsl3Ei/ASoE3
	O1QCstVjNJjEVOcp9hG874bqu2IHJTRXqRu/k95Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018182a3c2f5-89396199-3998-4d16-bb89-d5551d7b43da-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdff361dc2dbddc070ffc5d602969260f115422748c91d855713643314958176
Date: Mon, 20 Jun 2022 19:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655754179
