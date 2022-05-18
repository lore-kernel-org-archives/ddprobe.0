Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C6A1866
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 12:01:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652875259;
	h=To:Subject:From:Message-Id:Date;
	bh=Ysphmzsa33ww8g4zR3+2RmfdTIWpOURd5BGwffhyYGc=;
	b=jJ7HcxusYlkZposlcu4IwxmkIVZVXC8nlWxTihJO8C64iac2a2CvsII3NGZr7fJw
	yPTWlfafChlXWMKY/oq23O8vwQIWk7ZPFZw1RPdE72wNPugqX0sH062YMMjV1zeKdsb
	s93AvmIE1ytGzpVnWvfXS1LWytC7aFVKwKOxsvQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652875259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ysphmzsa33ww8g4zR3+2RmfdTIWpOURd5BGwffhyYGc=;
	b=RcNe/r/WlwtHfExO1xlmr0UFs5VpzvsAYyaiUJCY7h4OmI3pmHFDyFRubYbgKCZX
	frGauNnvu0nYeN7Vro4NiSFgUiN/Ob31Y6wCDi3CTMXqJWA26g2RQ3QMtshrDCyEURf
	LI5iiF56URFesCFdIPP113fWtA//dw24R5TMMiU0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d70aeda2-0c953013-af21-43c5-9839-59670f4b97f1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7265bd053deba6e5913d35ff1910ec5dafae2689f9fd6534eb5780307464fdd
Date: Wed, 18 May 2022 12:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652875259
